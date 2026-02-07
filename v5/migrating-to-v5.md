# Migrating to V5: From XML Views to React/UXP

This guide explains how to migrate your old XML-based views to the new React/UXP v5 architecture.

---

## Overview

In v5, views are no longer defined in XML files. Instead, you create React components that are registered via configuration. This provides:

- **Type safety** with TypeScript
- **Reusable components** with modern React patterns
- **Better developer experience** with hot reload and modern tooling
- **Consistent UI** using UXP component library

---

## 1. Creating a New V5 App Project

> **Note:** This section is a work in progress. Instructions for scaffolding a new v5 app will be added soon.

Once you have your v5 app project scaffolded, you'll have a `Resources/views` folder. This is where all your React code lives.

---

## 2. Folder Structure

Your v5 app should follow this standard structure (based on the Location 5.0 app):

```
Resources/views/
├── src/
│   ├── views/              # Main view components (pages)
│   │   ├── portfolio/
│   │   │   ├── PortfolioView.tsx
│   │   │   └── PortfolioView.scss
│   │   ├── dashboard/
│   │   ├── details/
│   │   └── settings/
│   │
│   ├── components/         # Reusable components
│   │   ├── location-details/
│   │   ├── site-summary/
│   │   └── settings/
│   │
│   ├── forms/             # Form components
│   │   ├── location-form/
│   │   ├── holiday-form/
│   │   └── document-uploader/
│   │
│   ├── services.ts        # API service configurations
│   ├── index.tsx          # Registration entry point
│   ├── utils.ts           # Utility functions
│   ├── types.ts           # TypeScript types
│   ├── uxp.ts             # UXP re-exports
│   └── global.scss        # Global styles
│
├── dist/                  # Build output
├── package.json           # Dependencies and scripts
├── webpack.config.js      # Build configuration
├── tsconfig.json          # TypeScript configuration
├── bundle.json            # Bundle metadata
└── localization.json      # Translation strings
```

### Key Files

- **src/views/** - Each subdirectory is a complete view (page) with its own component and styles
- **src/components/** - Shared components used across multiple views
- **src/forms/** - Form components (often used in modals/slide-ins)
- **src/services.ts** - Centralized API service configurations (see [data-fetching.md](./data-fetching.md))
- **src/index.tsx** - Where you register all views and widgets

---

## 3. Creating a View

A view is a React component that represents a full page in your app.

### Example: Portfolio View

```typescript
// src/views/portfolio/PortfolioView.tsx
import React, { FunctionComponent } from "react";
import { useUXPContext, ObjectSearchComponent } from "uxp/components";
import { LocationServices } from "../../services";
import './PortfolioView.scss';

interface PortfolioViewProps {
    uxpContext?: IContextProvider;
}

export const PortfolioView: FunctionComponent<PortfolioViewProps> = (props) => {
    const uxpContext = useUXPContext();

    const getAll = async (page, pageSize, query, filters, sort) => {
        const { data } = await executeConfig(
            uxpContext,
            LocationServices.getAll({ page, pageSize, q: query, ...filters })
        );
        return { items: data || [] };
    };

    return (
        <div className="portfolio-view">
            <ObjectSearchComponent
                data={getAll}
                idField="LocationKey"
                columns={[/* column definitions */]}
                pageSize={50}
            />
        </div>
    );
};
```

### View Conventions

- Each view goes in its own folder under `src/views/`
- Name the component file after the view (e.g., `PortfolioView.tsx`)
- Include a styles file (e.g., `PortfolioView.scss`)
- Export the component so it can be registered
- Use `useUXPContext()` hook to access UXP context

---

## 4. Creating Components

Components are reusable pieces that can be used across multiple views.

```typescript
// src/components/site-summary/SiteSummary.tsx
import React, { FunctionComponent } from "react";
import { InfoCardGroup, useExecuteRequest } from "uxp/components";
import { LocationTypeServices } from "../../services";

interface SiteSummaryProps {
    locationKey?: string;
}

export const SiteSummaryComponent: FunctionComponent<SiteSummaryProps> = (props) => {
    const { data: stats, loading } = useExecuteRequest(
        LocationTypeServices.getAllWithCounts()
    );

    if (loading) return <div>Loading...</div>;

    return (
        <InfoCardGroup
            cards={stats.map(s => ({
                label: s.LocationType,
                value: s.Count
            }))}
        />
    );
};
```

---

## 5. Registering Views & Widgets

All views and widgets must be registered in `src/index.tsx`.

```typescript
// src/index.tsx
import { registerUI, registerWidget, enableLocalization } from './uxp';
import { DashboardView } from './views/dashboard/DashboardView';
import { PortfolioView } from './views/portfolio/PortfolioView';
import { DetailsView } from './views/details/DetailsView';
import { SettingsView } from './views/settings/SettingsView';
import './global.scss';

// Register views (pages)
registerUI({
    id: "dashboard-view",
    component: DashboardView
});

registerUI({
    id: "portfolio-view",
    component: PortfolioView
});

registerUI({
    id: "details-view",
    component: DetailsView
});

registerUI({
    id: "settings-view",
    component: SettingsView
});

// Register dashboard widgets (optional)
registerWidget({
    id: 'location-map',
    widget: LocationMapWidget
});

// Enable localization
enableLocalization();
```

**Key Points:**
- Use `registerUI()` for full-page views
- Use `registerWidget()` for dashboard widgets
- The `id` is used to reference the view in `Configuration.yml`
- Call `enableLocalization()` to enable the `$L()` function

---

## 6. Configuration.yml

The `Configuration.yml` file connects your registered views to routes and navigation.

```yaml
# Location/5.0/Configuration.yml

appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location

navigationLinks:
  - label: Dashboard
    icon: ""
    link: /dashboard
    pageId: ui/dashboard-view    # References registerUI id
    userGroups: []
    appRoles: []
    children: []

  - label: Portfolios
    icon: ""
    link: /portfolios
    pageId: ui/portfolio-view
    userGroups: []
    appRoles: []
    children: []

  - label: Settings
    icon: ""
    link: /settings
    pageId: ui/settings-view
    userGroups: []
    appRoles: []
    children: []

otherRoutes:
  "/details/:locationKey":
    pageId: ui/details-view
    userGroups: []
    appRoles: []
    title: ":name"

  "/":
    redirectTo: "/dashboard"
```

### Configuration Structure

**Top-level properties:**
- `appId` - Your app identifier
- `bundleId` - Bundle identifier for the app
- `bundleJsonPath` - Path to bundle.json
- `scripts` - JavaScript files to load (your webpack output)
- `baseRoute` - Base URL path for your app (e.g., `/location`)

**navigationLinks:**
- Creates sidebar navigation items
- `pageId` format: `ui/{id}` where `{id}` matches your `registerUI()` id
- `link` is relative to `baseRoute`
- `userGroups` and `appRoles` control access permissions
- Supports nested `children` for hierarchical navigation

**otherRoutes:**
- Define routes that don't appear in navigation (like details pages)
- Supports dynamic parameters (`:locationKey`)
- Use `redirectTo` for default route redirects

---

## 7. How Routes & Rendering Work

Here's a simplified flow of how v5 routes and renders your views:

1. **User navigates** to `/view/location/portfolios`

2. **Framework matches route:**
   - Looks at `Configuration.yml`
   - Finds `baseRoute: /location`
   - Matches `/portfolios` to navigation link
   - Gets `pageId: ui/portfolio-view`

3. **Framework loads component:**
   - Looks for registered UI with id `portfolio-view`
   - Finds `PortfolioView` component registered in `index.tsx`
   - Loads required scripts if not already loaded

4. **Framework renders:**
   - Renders `BaseLayout` with header and sidebar
   - Passes `uxpContext` to your component
   - Injects route parameters as props
   - Your component renders with full access to UXP components and context

**Dynamic Routes:**

For routes like `/details/:locationKey`:
- Parameters are extracted from URL (e.g., `locationKey: "123"`)
- Passed to your component as props
- Accessible via `useRouterContext()` hook

---

## 8. Building Your App

```bash
# Development build with watch
npm run watch

# Production build
npm run build
```

The output goes to `dist/main.js`, which is referenced in `Configuration.yml`.

---

## Next Steps

- **[Data Fetching](./data-fetching.md)** - Learn how to fetch data using service configurations
- **UXP Component Library** - Explore available components (ObjectSearchComponent, DataGrid, Forms, etc.)
- **Theming** - Access theme colors via `uxpContext.theme`
- **Localization** - Use `uxpContext.$L('key')` for translations

---

## Quick Migration Checklist

- [ ] Create v5 app project structure
- [ ] Define folder structure (views, components, forms)
- [ ] Create service configurations in `services.ts`
- [ ] Build view components
- [ ] Register views in `index.tsx`
- [ ] Configure routes in `Configuration.yml`
- [ ] Add navigation links
- [ ] Build and test

---

**Remember:** Start small. Migrate one view at a time. Use the Location app as a reference example.
