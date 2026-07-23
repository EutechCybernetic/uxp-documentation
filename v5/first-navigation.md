# Step 4: Add Navigation and Validate

Configure routes in `Configuration.yml` and add your view to navigation.

---

## 1. Add App Metadata to Configuration.yml

Open `Configuration.yml` (in your app root folder) and add metadata:

```yaml
# App Metadata
appId: YourApp  # ex: Location
bundleId: iviva-<yourapp>-app # ex: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /baseroute # ex: location , this will compile to /view/location
```

**Fields:**
- `appId` - Must match your app folder name
- `bundleId` - Unique identifier for your bundle
- `bundleJsonPath` - Path to bundle.json
- `scripts` - JavaScript files to load (your compiled bundle)
- `baseRoute` - Base URL path for your app (`/yourapp` becomes `/view/yourapp`)

---

## 2. Add Your First Navigation Link

Add a navigation link that appears in the header:

```yaml
# App Metadata
appId: YourApp  # ex: Location
bundleId: iviva-<yourapp>-app # ex: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /baseroute # ex: location , this will compile to /view/location

# Navigation Links (appear in header)
navigationLinks:
  - label: Portfolios
    icon: "building"
    link: /portfolios
    pageId: ui/portfolio-view # follows <type>/<componentid>, type is either ui or widget. component id is the id used to register the component. 
    userGroups: []
    appRoles: []
    children: []
```

**Link Fields:**
- `label` - Text shown in navigation
- `icon` - Icon name (optional) (`fal link`)
- `link` - Route path (will become `/view/yourapp/portfolios`)
- `pageId` - Component to render (format: `ui/<registered-id>`)
- `userGroups` - User group restrictions (empty = all users)
- `appRoles` - App role restrictions (empty = all users)
- `children` - Nested navigation items (optional)

> For all options — link types, permissions, guardrails (`protected`/`lockAccess`), the
> sidebar/header split, and syncing — see [Navigation Configuration](./navigation.md).

---

## 3. Verify Registration Matches

Ensure your `pageId` matches the ID you used when registering:

**In Configuration.yml:**
```yaml
pageId: ui/portfolio-view  # Format: ui/<id>
```

**In src/index.tsx:**
```typescript
registerUI({
    id: "portfolio-view",  // Must match!
    component: PortfolioView
});
```

---

## 4. Build Your App

```bash
cd Resources/views
npm run build
```

---

## 5. Validate Setup

### Access Your View

Navigate to:
```
http://your-account-url/view/yourapp/portfolios
```

You should see:
- Your view renders correctly
- Navigation link appears in header
- Clicking the link loads your view

### Troubleshooting

**404 Not Found:**
- Check `baseRoute` matches URL (`/yourapp`)
- Check `link` matches URL (`/portfolios`)
- Verify framework is running

**"Component not registered" error:**
- Ensure `pageId` matches registration ID exactly
- Check bundle script is loaded in `Configuration.yml`
- Verify build succeeded (check `dist/main.js` exists)

**Navigation link not visible:**
- Check `label` is set
- Verify user has required permissions
- Check link is in `navigationLinks` (not `otherRoutes`)

**Blank page:**
- Check browser console for errors
- Verify component exports correctly (`export default`)
- Ensure `uxpContext` is used correctly
---

## Next Steps

Your first view is working! Continue to:

- [Step 5: Understanding V5 Architecture](./architecture.md) - Learn how v5 works under the hood
