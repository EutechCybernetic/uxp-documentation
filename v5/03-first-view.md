# Step 3: Create Your First View

Create a React view component and register it as a UI component.

---

## 1. Create a View Component

Create your first view in `src/views/`:

```typescript
// src/views/portfolio/PortfolioView.tsx
import { ObjectSearchComponent, useExecuteRequestCallback,useUXPContext } from "uxp/components";
import { YourAppServices } from "../../services";

const PortfolioView = ({ }) => {
    const uxpContext = useUXPContext();
    const executeGetAll = useExecuteRequestCallback(
        YourAppServices.getAll()
    );

    const getAll = async (page, pageSize, query, filters, sort) => {
        const params = { page, pageSize, q: query, ...filters };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const columns = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        }
    ];

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

---

## 2. Register the View as UI

In `src/index.tsx`, register your view:

```typescript
// src/index.tsx
import { enableLocalization } from './uxp';
import PortfolioView from './views/portfolio/PortfolioView';

// Register as UI (RECOMMENDED for v5 views)
window.registerUI({
    id: "portfolio-view",
    component: PortfolioView
});


// Enable localization
enableLocalization();

```

### UI vs Widget Registration

**Use `registerUI()` for views (pages):**
```typescript
window.registerUI({
    id: "portfolio-view",
    component: PortfolioView
});
```

**Use `registerWidget()` only for dashboard widgets:**
```typescript
window.registerWidget({
    id: "stats-widget",
    widget: StatsWidget,
    moduleId: "com.yourapp.widgets"
});
```

**Why `registerUI()`?**
- ✅ Designed for full-page views
- ✅ Better for v5 architecture
- ✅ Recommended by framework
- ✅ To avoid clutter in widgets list.

---

## 3. Update bundle.json

Add your UI component to `bundle.json`:

```json
{
    "id": "iviva-<yourapp>-app", // ex: iviva-location-app
    "author": "",
    "uis": [
        {
            "id": "portfolio-view",
            "label": "Portfolio View",
            "description": "Portfolio listing page"
        }
    ],
    "widgets": [],
    "sidebarLinks": [],
    "menuItems": []
}
```

**Key Points:**
- `id` - Bundle identifier (format: `iviva-<appname>-app`)
- `uis` array - List all UI components registered with `window.registerUI()`
- Each UI entry needs: `id`, `label`, `description`
- The `id` must match the ID used in `window.registerUI()`

---

## 4. Build Your View

```bash
cd Resources/views
npm run build
```

Your view is now compiled to `dist/main.js`.

---

## Next Steps

Your view is created but not yet accessible. Continue to:

- [Step 4: Add Navigation](./04-first-navigation.md) - Configure routes and add to navigation
