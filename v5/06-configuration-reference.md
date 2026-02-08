# Configuration.yml Setup

Complete reference for `configuration.yml` - the central configuration file for v5 apps.

---

## Overview

`configuration.yml` is located in your **app root folder** (not in Resources/views/). It defines:
- App metadata
- Routes and navigation
- Scripts and styles to load
- Permission mappings

**Location:** `/<Your App>/5.0/configuration.yml`

---

## Basic Structure (Sample from Location App)

```yaml
# App Metadata (all fields are required)
appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location

# Navigation Links
navigationLinks:
  - label: Dashboard
    icon: "dashboard"
    link: /dashboard
    pageId: ui/dashboard-view
    userGroups: []
    appRoles: []
    children: []

# Routes without navigation
otherRoutes:
  "/details/:locationKey":
    pageId: ui/details-view
    userGroups: []
    appRoles: []
    title: ":name"
```


## Navigation Links

### Basic Link

```yaml
navigationLinks:
  - label: Portfolios         # Display text
    icon: "building"          # Icon name (optional)
    link: /portfolios         # Route path (combined with baseRoute)
    pageId: ui/portfolio-view # Component to render
    userGroups: []            # User group restrictions (empty = all)
    appRoles: []              # App role restrictions (empty = all)
    children: []              # Nested links (optional)
```

### Link Properties

| Property | Type | Description |
|----------|------|-------------|
| `label` | string | Display text (required) |
| `icon` | string | Icon name (optional) |
| `link` | string | Route path relative to baseRoute (required) |
| `pageId` | string | Component ID in format `ui/<id>` or `widget/<id>` (required) |
| `userGroups` | array | User groups allowed (empty = all) |
| `appRoles` | array | App roles allowed (empty = all) |
| `children` | array | Nested navigation links (optional) |

---

## Nested Navigation

Create hierarchical navigation:

```yaml
navigationLinks:
  - label: Locations
    icon: "building"
    link: /locations
    pageId: ui/locations-view
    children:
      - label: Portfolios
        link: /portfolios
        pageId: ui/portfolio-view

      - label: Types
        link: /types
        pageId: ui/types-view

      - label: Holidays
        link: /holidays
        pageId: ui/holidays-view
```

**Result:** Creates dropdown menu in header navigation.

---

## Other Routes

Routes that don't appear in navigation (e.g., details pages, edit forms).

### Basic Route

```yaml
otherRoutes:
  "/details/:locationKey":   # Route path with dynamic param
    pageId: ui/details-view  # Component to render
    userGroups: []
    appRoles: []
    title: ":name"           # Dynamic title from param (optional)
```

### Route Properties

| Property | Type | Description |
|----------|------|-------------|
| `pageId` | string | Component ID in format `ui/<id>` or `widget/<id>` (required) |
| `userGroups` | array | User groups allowed (empty = all) |
| `appRoles` | array | App roles allowed (empty = all) |
| `title` | string | Page title, can use `:paramName` for dynamic values |
| `redirectTo` | string | Redirect to another route |

---

## Dynamic Route Parameters

Use `:paramName` syntax:

```yaml
otherRoutes:
  "/details/:locationKey":
    pageId: ui/details-view

  "/edit/:id":
    pageId: ui/edit-view

  "/layout/:layoutKey/section/:sectionId":
    pageId: ui/layout-section-view
```

Parameters are passed as props to components:

```typescript
// URL: /view/location/details/LOC-123
const DetailsView = ({ uxpContext, locationKey }) => {
    console.log(locationKey); // "LOC-123"
};
```

---

## Route Redirects

Redirect one route to another:

```yaml
otherRoutes:
  "/":                        # Root path
    redirectTo: "/dashboard"  # Redirect to dashboard

  "/old-path":
    redirectTo: "/new-path"
```

---

## Permissions

Control access with `appRoles` and `userGroups`.

### User Groups

```yaml
navigationLinks:
  - label: Admin Panel
    link: /admin
    pageId: ui/admin-view
    userGroups: ["1", "2"]  # Only these groups
```

### App Roles

```yaml
navigationLinks:
  - label: Settings
    link: /settings
    pageId: ui/settings-view
    appRoles: ["Location.canviewapp"]  # Only users with the app role
```

## Page ID Format

Reference registered components:

### UI Components

```yaml
pageId: ui/portfolio-view  # References: registerUI({ id: "portfolio-view", ... })
```

### Widget Components

```yaml
pageId: widget/stats-widget  # References: registerWidget({ id: "stats-widget", ... })
```

---

## Icons

Icons are optional. We have both FontAwesome and Phosphor icon support. you can use either: 

```yaml
navigationLinks:
  - label: Dashboard
    icon: "fas dashboard"      # Icon name. Similar pattern for phosphor icons ph<weight> <icon name>

  - label: Portfolios
    icon: ""
```

---

## URL Generation

Routes combine with `baseRoute`:

```yaml
baseRoute: /location

navigationLinks:
  - label: Portfolios
    link: /portfolios     # Becomes: /view/location/portfolios
```

**Final URL:** `https://account.lucy.com/view/location/portfolios`

---

**See Location 5.0 app** (`/Location/5.0/configuration.yml`) for complete working example.


## Validation Checklist

Before deploying, verify:

- [ ] `appId` matches app folder name
- [ ] `bundleId` is unique
- [ ] `baseRoute` is lowercase and URL-friendly
- [ ] All `pageId` values match registered components (exact match)
- [ ] All links start with `/`
- [ ] Dynamic routes use `:paramName` syntax
- [ ] Scripts array includes your final build JS
- [ ] No duplicate route paths
- [ ] Permissions are correctly set

---

## Best Practices

1. **Use descriptive route paths** - `/portfolios` not `/p`
2. **Keep baseRoute simple** - Usually app name (e.g., `/location`)
3. **Group related links** - Use nested navigation
4. **Set appropriate permissions** - Don't expose admin routes
5. **Use redirects for root** - Redirect `/` to default page
6. **Consistent naming** - Match `pageId` to component purpose
7. **Document permissions** - Comment who should access each route

---

## Next Steps

Let's check the components:

- [Step 7: Components](./07-core-components.md) - Introduction to v5 components
