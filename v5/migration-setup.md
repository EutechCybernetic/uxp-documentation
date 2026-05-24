# Step 2: Migration Setup

Setup your app for migrating from XML-based views to v5 React-based views.

---

## What is V5 Migration?

V5 migration involves:
- **Old:** XML-based views in `Views/` folder
- **New:** React-based views in `Resources/views/` folder
- **URL Change:** `/apps/<rest>` → `/view/<rest>`

---

## 1. Create Views Folder Structure

In your app's `Resources` folder, initialize the v5 views structure:

```bash
cd /path/to/your/app/Resources
npx lucy-xp init views --env v5
```

This creates:

```
Resources/
└── views/
    ├── src/
    │   ├── views/              # View components (pages)
    │   ├── components/         # Reusable components
    │   ├── forms/              # Form components
    │   ├── services.ts         # API configurations
    │   ├── types.ts            # TypeScript types
    │   ├── utils.ts            # Utility functions
    │   └── index.tsx           # Registration entry point
    ├── dist/                   # Build output (created by build)
    ├── bundle.json             # App metadata
    ├── webpack.config.js       # Webpack configuration
    ├── tsconfig.json           # TypeScript configuration
    ├── localization.json       # Translations
    └── package.json            # Dependencies
```

---

## 2. Install Dependencies

```bash
cd views
npm install
```

---

## 3. Create Configuration File

Create `Configuration.yml` in your **app root folder** (not in Resources/views/):

```bash
# Location: /apps/iviva.dx/YourApp/5.0/Configuration.yml
touch Configuration.yml
```

Leave it empty for now - we'll populate it in the next step.

---

## 4. Understanding the Migration

### Old Structure (XML-based)

```
/apps/YourApp/5.0/
├── Views/
│   ├── SomeView.xml           # XML view definitions
│   └── AnotherView.xml
└── Models/
    └── YourModel.cs
```

**URL:** `http://account.com/apps/yourapp/someview`

### New Structure (V5 React-based)

```
/apps/YourApp/5.0/
├── Configuration.yml          # NEW: Routes & navigation config
├── Resources/
│   └── views/                 # NEW: React views
│       ├── src/
│       │   ├── views/
│       │   └── index.tsx      # Component registration
│       └── bundle.json
├── Views/                     # OLD: Keep for backwards compatibility
│   └── (old XML files)
└── Models/
    └── YourModel.cs
```

**URL:** `http://account.com/view/yourapp/someview`

### Key Changes

| Aspect | Old (XML) | New (V5) |
|--------|-----------|----------|
| **Views Location** | `Views/*.xml` | `Resources/views/src/views/*.tsx` |
| **Technology** | XML templates | React components |
| **URL Format** | `/apps/yourapp/...` | `/view/yourapp/...` |
| **Navigation** | Sidebar | Sidebar/Header (Configurable) |
| **Configuration** | XML files | `Configuration.yml` |
| **Registration** | Automatic from XML | Explicit via `registerUI()` and `Configuration.yml` |

---

## 5. Migration Strategy

You can migrate incrementally:

1. **Both systems coexist** - Old XML views and new React views can run simultaneously
2. **Migrate page by page** - Convert one view at a time
3. **Test thoroughly** - Validate each migrated view before moving to the next
4. **Keep XML backup** - Don't delete old XML views until migration is complete

---

## 6. What We'll Build Next

In the following steps, we'll:
1. Create a React view component
2. Register it as a UI component
3. Add it to navigation via `Configuration.yml`
4. Test it works

---

## Folder Structure Reference

```
/apps/YourApp/5.0/
│
├── Configuration.yml          # App routes and navigation (Step 4)
│
├── Resources/
│   └── views/
│       ├── src/
│       │   ├── views/         # Your view components (Step 3)
│       │   │   ├── portfolio/
│       │   │   │   └── PortfolioView.tsx
│       │   │   └── details/
│       │   │       └── DetailsView.tsx
│       │   │
│       │   ├── components/    # Reusable UI components
│       │   ├── forms/         # Form components
│       │   ├── services.ts    # API service configs
│       │   ├── types.ts       # TypeScript types
│       │   └── index.tsx      # Registration (Step 3)
│       │
│       ├── dist/              # Build output
│       │   └── main.js        # Compiled bundle
│       │
│       ├── bundle.json        # App metadata (Step 3)
│       └── package.json       # Dependencies
│
└── Models/                    # Backend models (unchanged)
    └── YourModel.cs
```

---

## Next Steps

Your app is now ready for v5 development. Continue to:

- [Step 3: Create Your First View](./first-view.md) - Create and register a React view component
