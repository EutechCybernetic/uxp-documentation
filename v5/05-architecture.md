# V5 App Architecture Overview

Understanding how v5 apps work: architecture, folder structure, routing, navigation, and configuration.

---

## What's New in V5?

V5 introduces a modern, fully customizable architecture:

✅ **100% Customizable Navigation** - Replace or customize any view without touching core code with the power of uxp. 
✅ **Multiple Navigation Options** - Configurable sidebar and/or header navigation
✅ **React-based Architecture** - Full React 18 support with hooks and modern patterns
✅ **TypeScript Support** - Type-safe development with full TypeScript support
✅ **Modern Tooling** - React + TypeScript + SCSS + Webpack build pipeline
✅ **Rich Component Library** - Comprehensive set of UXP components (ObjectSearch, Forms, Charts, Maps, etc.)

---

## Architecture Overview

```
┌─────────────────────────────────────────┐
│         configuration.yml               │
│  - Routes, Navigation, Permissions      │
└──────────────┬──────────────────────────┘
               │
               ▼
┌─────────────────────────────────────────┐
│        V5 Framework (UXP)               │
│  - Route matching                       │
│  - Component lookup                     │
│  - Permission checking                  │
│  - Rendering                            │
└──────────────┬──────────────────────────┘
               │
               ▼
┌─────────────────────────────────────────┐
│      Your App (Resources/views/)        │
│  - View components (pages)              │
│  - Reusable components                  │
│  - Services & API calls                 │
│  - Registration (index.tsx)             │
└─────────────────────────────────────────┘
```

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
## How Routing Works

When you navigate to a URL:

1. **URL:** `/view/location/details/LOC-123`
2. **Framework matches** route pattern `/details/:locationKey`
3. **Finds pageId:** `ui/details-view`
4. **Looks up component** registered as `details-view`
5. **Renders component** with props: `{ uxpContext, locationKey: "LOC-123" }`

---

## Next Steps

Deep dive in to configurations:

- [Step 6: Configuration Reference](./06-configuration-reference.md) - Complete configuration.yml guide
