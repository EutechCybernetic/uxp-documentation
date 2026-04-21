# Step 15: Best Practices

Best practices for v5 app development based on the Location 5.0 app.

---

## Code Organization

### Use Feature-Based Folder Structure

```
src/
├── views/              # One folder per view
│   ├── portfolio/
│   ├── details/
│   └── settings/
├── components/         # Shared components
│   ├── location-card/
│   └── stats-summary/
└── forms/             # Form components
    └── location-form/
```

### Keep Files Small and Focused

- One component per file
- Co-locate styles with components
- Extract complex logic into custom hooks/ utility functions

---

## Component Patterns

### Use `registerUI()` for Views

```typescript
// ✅ Good - for page views
registerUI({
    id: "portfolio-view",
    component: PortfolioView
});

// ❌ Avoid - for page views
registerWidget({
    id: "portfolio-widget",
    widget: PortfolioView
});
```

### Centralize API Calls in services.ts

```typescript
// src/services.ts
export const LocationServices = {
    getAll: (params = {}): ExecuteServiceConfig => ({
        type: 'service',
        app: 'Location',
        service: 'Location:GetAllLocations',
        parameters: params,
        options: { json: true },
        defaultValue: []
    })
};
```

### Use UXP Components

```typescript
// ✅ Good - use UXP components
import { ObjectSearchComponent } from "uxp/components";

// ❌ Avoid - building from scratch
const MyCustomTable = () => { /* ... */ };
```

---

## Styling

### Use BEM Naming with App Prefix

```scss
// ✅ Good - BEM with app prefix
.ilocapp_portfolio {
    &__header {
        /* ... */
    }
    &__item {
        /* ... */
        &--active {
            /* ... */
        }
    }
}
```

### Always Use Theme Variables

```scss
// ✅ Good - theme variables
.my-component {
    background-color: var(--primaryBGColor);
    color: var(--primaryTextColor);
    border: 1px solid var(--borderColor);
}

// ❌ Avoid - hardcoded colors
.my-component {
    background-color: #ffffff;
    color: #424242;
}
```

---

## Data Fetching

### Use Hooks for Data Loading

```typescript
// ✅ Good - use hooks
const { data, loading, error } = useExecuteRequest(
    LocationServices.getAll()
);

// ❌ Avoid - manual state management
const [loading, setLoading] = useState(false);
const [data, setData] = useState([]);
// ...
```

### Handle Loading and Error States

```typescript
// ✅ Good - handle all states
if (loading) return <Loading />;
if (error) return <div>Error: {error.message}</div>;
return <div>{/* render data */}</div>;
```

---

## TypeScript

### Define Types

```typescript
// ✅ Good - define types
interface Location {
    LocationKey: string;
    LocationName: string;
    LocationType: string;
}

const MyView = ({ location }: { location: Location }) => {
    /* ... */
};
```

### Use Proper Props Interfaces

```typescript
// ✅ Good
interface PortfolioViewProps {
    uxpContext: UXPContext;
    filter?: string;
}

const PortfolioView = ({ uxpContext, filter }: PortfolioViewProps) => {
    /* ... */
};
```

---

## Configuration

### Keep Configuration.yml Clean

```yaml
# ✅ Good - organized and clear
navigationLinks:
  - label: Portfolios
    link: /portfolios
    pageId: ui/portfolio-view

  - label: Settings
    link: /settings
    pageId: ui/settings-view
    appRoles: ["admin"]
```

### Use Meaningful IDs

```typescript
// ✅ Good - descriptive IDs
registerUI({ id: "portfolio-view", component: PortfolioView });
registerUI({ id: "details-view", component: DetailsView });

// ❌ Avoid - generic IDs
registerUI({ id: "view1", component: PortfolioView });
```

---

## Performance

### Use React.memo for Heavy Components

```typescript
import { memo } from 'react';

const HeavyComponent = memo(({ data }) => {
    /* expensive rendering */
});
```

### Avoid Unnecessary Re-renders

```typescript
// ✅ Good - memoize callbacks
const handleClick = useCallback(() => {
    /* ... */
}, [dependency]);

// ✅ Good - memoize values
const expensiveValue = useMemo(() => {
    return computeExpensiveValue(data);
}, [data]);
```

---

## Error Handling

### Always Handle Errors

```typescript
// ✅ Good

    const {data, error, errorMessage} = await uxpContext.executeServiceSafe(/*...*/);
    if(!!error) {
        // handle error
        return 
    }
    // handle success

```

### Show User-Friendly Messages

```typescript
// ✅ Good - helpful message
if (error) {
    return <div>Unable to load locations. Please try again.</div>;
}

// ❌ Avoid - technical message
if (error) {
    return <div>Error: {error.stack}</div>;
}
```

---

## Testing During Development

### Use Watch Mode

```bash
# Keep this running while developing
npm run watch
```

### Test in Actual iviva App

- Don't rely on standalone `index.html`
- Always test in the actual iviva application
- Verify navigation works
- Check permissions

---

## Localization

### Use $L() for All Text

```typescript
// ✅ Good - localized
<h1>{uxpContext.$L('location.title.portfolios')}</h1>

// ❌ Avoid - hardcoded text
<h1>Portfolios</h1>
```

### Organize Translation Keys

```json
{
    "location.title.portfolios": { "en": "Portfolios" },
    "location.action.create": { "en": "Create Location" },
    "location.message.success": { "en": "Location created successfully" }
}
```

---

## Quick Checklist

Before committing code:

- [ ] Code builds without errors (`npm run build`)
- [ ] All text uses `$L()` for localization
- [ ] Styles use theme variables
- [ ] Components use BEM naming with app prefix
- [ ] API calls use service configurations
- [ ] Loading and error states handled
- [ ] TypeScript types defined
- [ ] Components registered correctly
- [ ] Configuration.yml updated
- [ ] Tested in actual iviva app

---

## Common Pitfalls to Avoid

❌ Using `registerWidget()` for pages
❌ Hardcoding colors instead of theme variables
❌ Not handling loading/error states
❌ Hardcoded text without localization
❌ Creating custom components instead of using UXP components
❌ Testing only in standalone mode (`index.html`)
❌ Not organizing files by feature
❌ Mixing concerns in single files

---

## Summary

Follow these practices for clean, maintainable v5 apps:

1. Use feature-based organization
2. Register views as UI, not widgets
3. Centralize API calls in services.ts
4. Use BEM naming with app prefix
5. Always use theme variables
6. Use UXP hooks for data fetching
7. Handle all states (loading, error, success)
8. Localize all text
9. Test in actual iviva app
10. Keep Configuration.yml clean and organized

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/`) for working examples of all these practices.
