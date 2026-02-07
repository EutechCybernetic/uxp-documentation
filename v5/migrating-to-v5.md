# V5 App Architecture

Understanding how v5 apps work: folder structure, routing, navigation, and configuration.

---

## Folder Structure

Your app's `Resources/views/` folder structure:

```
Resources/views/
├── src/
│   ├── views/                      # View components (pages)
│   │   ├── portfolio/
│   │   │   └── PortfolioView.tsx
│   │   ├── details/
│   │   │   └── DetailsView.tsx
│   │   └── settings/
│   │       └── SettingsView.tsx
│   │
│   ├── components/                 # Reusable components
│   │   ├── location-card/
│   │   └── location-summary/
│   │
│   ├── forms/                      # Form components
│   │   └── location-form/
│   │
│   ├── services.ts                 # API service configurations
│   ├── types.ts                    # TypeScript types
│   ├── utils.ts                    # Utility functions
│   └── index.tsx                   # Registration entry point
│
├── dist/                           # Build output
├── bundle.json                     # Bundle metadata
├── package.json                    # Dependencies
└── index.html                      # Development environment
```

**Note:** `index.html` is only needed for standalone local development/testing. When developing apps, components are rendered through the iviva application.

---

## How V5 Apps Work

### 1. Registration (src/index.tsx)

Register your views as UI components:

```typescript
// src/index.tsx
import PortfolioView from './views/portfolio/PortfolioView';
import DetailsView from './views/details/DetailsView';

// Register views as UI
registerUI({
    id: "location-portfolio",
    component: PortfolioView
});

registerUI({
    id: "location-details",
    component: DetailsView
});
```

### 2. Configuration (configuration.yml)

Create `configuration.yml` in your **app root folder** (e.g., `/apps/iviva.dx/Location/5.0/configuration.yml`):

```yaml
# App Metadata
appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location # base route, this will generate view/location as the final route

# navigation links for the app, these will show on the header
navigationLinks:
  - label: Dashboard
    icon: ""
    link: /dashboard # route (view/location/dashobard)
    userGroups: []
    appRoles: []
    pageId: ui/dashboard-view # component to render when navigate to the above route (format <type>/<component id>. type is either widget or ui based on how you registered the component. component id is the id you registed the component with)
    children: []

  - label: Portfolios
    icon: ""
    link: /portfolios
    userGroups: []
    appRoles: []
    children: []
    pageId: ui/portfolio-view

  - label: Holidays
    icon: ""
    link: /holidays
    userGroups: []
    appRoles: []
    children: []
    pageId: ui/holiday-view

  - label: Reports
    icon: ""
    link: /reports
    userGroups: []
    appRoles: []
    children: []
    pageId: ui/reports-view

  - label: Documents
    icon: ""
    link: /documents
    userGroups: []
    appRoles: []
    children: []
    pageId: ui/document-view

  - label: Settings
    icon: ""
    link: /settings
    userGroups: []
    appRoles: []
    children: []
    pageId: ui/settings-view

# other routes that not going to the navigation. Like details pages, etc.
otherRoutes:
  "/details/:locationKey": # route (view/location/details/1) 
    pageId: ui/details-view # same as in navigation links, component to render when navigate to the route
    userGroups: []
    appRoles: []
    title: ":name"
  "/layout/:layoutKey":
    pageId: ui/layout-view
    userGroups: []
    appRoles: []
    title: ":name"
  "/":
    redirectTo: "/dashboard" # to redirect view/location to view/location/dashboard
```

---

## How Routing Works

When you navigate to a URL, the framework:

1. Matches the URL against routes from `navigationLinks` and `otherRoutes` in `configuration.yml` (combined with `baseRoute`)
2. Finds the `pageId` from the matched route
3. Looks up the component registered with that ID (format: `<type>/<component-id>`)
4. Renders the component with URL parameters passed as props

**Example:**
- URL: `/view/location/details/LOC-123`
- Route: `baseRoute: /location` + `otherRoutes["/details/:locationKey"]`
- pageId: `ui/details-view`
- Renders: Component registered as `window.registerUI({ id: "details-view", ... })`
- Props: `{ uxpContext, locationKey: "LOC-123" }`

---

## How Navigation Works

Navigation links from `configuration.yml` render in the **header** (horizontal navigation).

```yaml
navigationLinks:
  - label: Dashboard
    link: /dashboard
    pageId: ui/dashboard-view
```

These appear as navigation items in the header middle section. Clicking navigates to the link and renders the component specified by `pageId`.

Use `userGroups` and `appRoles` to control visibility based on permissions.

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/`) for complete configuration.yml example and implementation.

---

## Next Steps

- [Core Components](./core-components.md) - UXP components for building views
- [Data Fetching](./data-fetching.md) - Service configurations for API calls
- [Events & Synchronization](./events-and-synchronization.md) - Keep views synchronized
- [Building & Deployment](./building-deployment.md) - Deploy your app
