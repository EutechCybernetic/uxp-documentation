# Pluggable Views

Make parts of your app customizable without modifying core code.

---

## Concept

Pluggable views allow users to override specific sections of your UI. This is v5's answer to v4's "view override" feature, but with granular control.

**Why?**
- Customers can customize without forking your app
- Core app updates don't conflict with customizations

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


## Best Practices

**DO:**
- ✅ Use clear, hierarchical viewIds: `App/section/subsection`
- ✅ Provide sensible default components
---

**See Location 5.0 app** (`/Location/5.0/Resources/views/src/`) for complete pluggable view examples.

---

## Next Steps

- [Styling](./12-styling.md) - Styling your components