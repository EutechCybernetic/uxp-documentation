# Getting Started with V5 App Development

Setup your development environment for building v5 apps.

---

## Prerequisites

- Node.js 20+ installed
- Code editor (VS Code recommended)
- Git installed
- Access to iviva repositories

---

## 1. Setup iviva Framework

Clone and build the framework:

```bash
# Clone framework
git clone http://source.iviva.com/dinesh/iviva-net-core
cd iviva-net-core
git checkout v5-design-changes

# Build framework
cd iviva-net-core
dotnet publish -o ../build

# Run ivivaweb
cd ../build
dotnet ivivaweb.dll
```

**Note:** Use this local build instead of release builds for v5 development.

---

## 2. Setup Apps Repository

Clone the apps repository:

```bash
cd /path/to/your/iviva/apps
git clone http://source.iviva.com/dinesh/iviva.dx
cd iviva.dx
git checkout dev/dinesh
```

---

## 3. Enable V5 Apps

Enable System and Location v5 apps:

```bash
sdm <account> enabledapp System 5.0
sdm <account> enabledapp Location 5.0
sdm <account> mergedb auto
sdm <account> installviews
```

---

## 4. Verify Framework Setup

Access v5 screen:

```
http://<your-account-url>/view/location
```

If you see the Location v5 app, framework setup is complete.

---

## 5. Create Views in Your App

In your app's `Resources` folder, initialize the views:

```bash
cd /path/to/your/app/Resources
npx lucy-xp init views --env v5
```

This creates:

```
Resources/
└── views/
    ├── src/
    │   ├── views/              # View components
    │   ├── components/         # Reusable components
    │   ├── forms/              # Form components
    │   ├── services.ts         # API configurations
    │   ├── index.tsx           # Registration
    │   └── ...
    ├── dist/                   # Build output
    ├── bundle.json             # App metadata
    ├── webpack.config.js       # Webpack configuration
    ├── tsconfig.json           # TypeScript configuration
    ├── localization.json       # Translations
    └── package.json            # Dependencies
```

**Note:** `index.html` is only needed for standalone local development/testing. When developing apps, components are rendered through the iviva application.

---

## 6. Install Dependencies

```bash
cd views
npm install
```

---

## 7. Create and Register Views

Create view components and register them as UI (recommended approach for v5 apps).

### Create a View Component

```typescript
// src/views/portfolio/PortfolioView.tsx
import { ObjectSearchComponent } from "uxp/components";

const PortfolioView = ({ uxpContext }) => {
    return (
        <ObjectSearchComponent
            data={getAll}
            idField="Key"
            columns={columns}
            pageSize={50}
        />
    );
};

export default PortfolioView;
```

### Register as UI

```typescript
// src/index.tsx
import PortfolioView from './views/portfolio/PortfolioView';

// Register as UI (recommended for v5 views)
window.registerUI({
    id: "my-portfolio",
    component: PortfolioView
});
```

**Important:** Use `registerUI()` for app views, not `registerWidget()`. UI registration is the recommended approach for v5 apps.

---

## 8. Development Workflow

### Configure Routes and Navigation

Create `configuration.yml` in your app root folder (e.g., `/apps/iviva.dx/Location/5.0/configuration.yml`). This file defines routes, navigation, and page mappings.

See [App Architecture](./migrating-to-v5.md) for complete configuration.yml documentation.

### Run Development Environment

1. **Build your views:**
   ```bash
   cd Resources/views
   npm run watch    # Watches for changes and rebuilds
   ```

2. **Run iviva application** (in separate terminal):
   ```bash
   cd /path/to/iviva-net-core/build
   dotnet ivivaweb.dll
   ```

3. **Access in browser:**
   ```
   http://your-account-url/view/location
   ```

Your component should render in the browser. Changes to your code will be rebuilt automatically with `npm run watch`.

---

## 9. Build Commands

```bash
cd Resources/views

# Production build
npm run build

# Development build with watch mode
npm run watch

# Development server (for standalone testing only)
npm run dev
```

---

## Next Steps

- [App Architecture](./migrating-to-v5.md) - Understand folder structure, routing, and configuration.yml
- [Core Components](./core-components.md) - UXP components for building views
- [Data Fetching](./data-fetching.md) - Service configurations for API calls

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/`) for complete working examples.
