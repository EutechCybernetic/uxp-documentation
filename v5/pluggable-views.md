# Pluggable Views

Make parts of your app customizable without modifying core code.

---

## Concept

Pluggable views allow other apps to override specific sections of your UI. This is v5's answer to v4's "view override" feature, but with granular control.

**Why?**
- Customers can customize without forking your app
- Core app updates don't conflict with customizations
- Multiple customization points in one page

**Use cases:**
- Different summary cards in portfolio view
- Additional fields in details panel
- Custom tabs in details view

---

## usePluggableView Hook

Create customization points in your app.

### Basic Usage

```typescript
import { usePluggableView } from "uxp/components";

const PortfolioView = () => {
    // Define pluggable view point
    const renderSummary = usePluggableView({
        viewId: 'Location/summary',
        defaultPage: DefaultSummaryComponent
    });

    return (
        <div>
            {/* Render the pluggable summary */}
            {renderSummary()}
        </div>
    );
};
```

### With Props

Pass props to the pluggable component:

```typescript
const DetailsView = ({ locationKey }) => {
    const renderDetailsPanel = usePluggableView({
        viewId: 'Location/details',
        defaultPage: LocationDetailsComponent
    });

    return (
        <div>
            {/* Pass props */}
            {renderDetailsPanel({
                locationKey: locationKey,
                view: 'standalone'
            })}
        </div>
    );
};
```

---

## Overriding Views

Other apps can override your pluggable views.

### Step 1: Export Override

In your customization app:

```typescript
// CustomLocationViews.tsx
export const CustomLocationSummary = ({ locations }) => {
    return (
        <div className="custom-summary">
            {/* Custom summary UI */}
            <h2>My Custom Summary</h2>
            {locations.map(loc => (
                <div key={loc.Key}>{loc.Name}</div>
            ))}
        </div>
    );
};
```

### Step 2: Register Override

```typescript
// index.tsx (your customization app)
import { CustomLocationSummary } from './CustomLocationViews';

// Register the override
registerWidget({
    id: 'custom-location-summary',
    widget: CustomLocationSummary
});

// Export configured page with override
export const configuredPages = [
    {
        key: 'custom-location-summary-001',
        id: 'Location/summary',  // Same viewId as the pluggable view
        tags: {},                 // Optional: filter by tags
        moduleId: 'com.example.location-custom',
        componentId: 'custom-location-summary',
        type: ComponentType.Widget,
        appRoles: [],
        userGroups: [],
        props: {}
    }
];
```

---

## Tags for Conditional Overrides

Use tags to conditionally override views based on context:

```typescript
// In Location app - create pluggable view with tags
const renderSummary = usePluggableView({
    viewId: 'Location/summary',
    defaultPage: DefaultSummaryComponent,
    tags: {
        LocationType: currentLocationType  // Pass context
    }
});
```

```typescript
// In customization app - override only for specific location type
export const configuredPages = [
    {
        key: 'custom-building-summary-001',
        id: 'Location/summary',
        tags: {
            LocationType: 'Building'  // Only override for Buildings
        },
        moduleId: 'com.example.location-custom',
        componentId: 'custom-building-summary',
        type: ComponentType.Widget
    }
];
```

---

## Common Patterns

### Pattern 1: Pluggable Summary Section

```typescript
const PortfolioView = () => {
    const renderSummary = usePluggableView({
        viewId: 'Location/summary',
        defaultPage: SitesSummaryComponent
    });

    return (
        <div>
            <h1>Locations</h1>
            {renderSummary({ locations })}
            <ObjectSearchComponent {...props} />
        </div>
    );
};
```

### Pattern 2: Pluggable Details Tabs

```typescript
const LocationDetails = ({ locationKey }) => {
    const renderOtherDetails = usePluggableView({
        viewId: 'Location/details/other',
        defaultPage: DefaultOtherDetailsComponent
    });

    return (
        <ObjectDetailsPanel
            otherDetails={(item) => renderOtherDetails({ item })}
        />
    );
};
```

### Pattern 3: Multiple Pluggable Points

```typescript
const DetailsView = () => {
    const renderSummary = usePluggableView({
        viewId: 'Location/details/summary',
        defaultPage: DefaultSummary
    });

    const renderTabs = usePluggableView({
        viewId: 'Location/details/tabs',
        defaultPage: DefaultTabs
    });

    const renderSidebar = usePluggableView({
        viewId: 'Location/details/sidebar',
        defaultPage: DefaultSidebar
    });

    return (
        <div>
            {renderSummary()}
            {renderTabs()}
            {renderSidebar()}
        </div>
    );
};
```

---

## Best Practices

**DO:**
- ✅ Use clear, hierarchical viewIds: `App/section/subsection`
- ✅ Provide sensible default components
- ✅ Use tags for conditional overrides
- ✅ Document available pluggable points

**DON'T:**
- ❌ Make entire pages pluggable - use granular sections
- ❌ Change viewId after release - breaks customizations
- ❌ Forget to pass necessary props to pluggable components

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/Resources/views/src/`) for complete pluggable view examples.

---

## Next Steps

- [Using External Components](./using-external-components.md) - Use components from other apps
- [Events & Synchronization](./events-and-synchronization.md) - Keep views synchronized
- [Core Components](./core-components.md) - UXP components
