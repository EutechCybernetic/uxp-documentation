# Step 3: Create Your First View

Create a React view component and register it as a UI component.

---

## 1. Create a View Component

Create your first view in `src/views/`:

```typescript
// src/views/portfolio/PortfolioView.tsx
import React, { FunctionComponent, memo, useCallback, useMemo } from "react";
import {
    ObjectSearchComponent,
    useUXPContext,
    useExecuteRequestCallback,
    RowData,
    Filters,
    Sort,
    OSCColumn
} from "uxp/components";
import { YourAppServices } from "../../services";

interface PortfolioViewProps {}

const PortfolioViewBase: FunctionComponent<PortfolioViewProps> = (props) => {
    const uxpContext = useUXPContext();

    // Use executeRequestCallback for service execution
    const executeGetAll = useExecuteRequestCallback(
        YourAppServices.getAll(),
        {
            // Preview mode: Returns sampleData instead of making API calls
            // Useful for development, testing, and showcasing components without backend
            preview: {
                isPreview: false,  // Set to true to use sample data
                sampleData: []     // Provide mock data here
            }
        }
    );

    // Memoize data fetching function
    const getAll = useCallback(
        async (
            page: number,
            pageSize: number,
            query?: string,
            filters?: Filters,
            sort?: Sort
        ): Promise<{ items: RowData[] }> => {
            const params = {
                page,
                pageSize,
                q: query,
                ...filters,
                ...sort
            };
            const response = await executeGetAll(params);
            return { items: response.data || [] };
        },
        [executeGetAll]
    );

    // Memoize columns array
    const columns = useMemo((): OSCColumn[] => {
        return [
            {
                id: 'Name',
                label: 'Name',
                isSortable: true,
                isResizable: true
            },
            {
                id: 'Status',
                label: 'Status',
                isResizable: true
            }
        ];
    }, []);

    return (
        <ObjectSearchComponent
            data={getAll}
            idField="Key"
            columns={columns}
            pageSize={50}
            total={0}
        />
    );
};

export const PortfolioView = memo(PortfolioViewBase);
```

### Performance Optimization

This example uses React performance optimization patterns to prevent unnecessary re-renders:

**`useCallback`** - Memoizes the `getAll` function so it maintains a stable reference across renders. Without it, a new function would be created on every render, causing `ObjectSearchComponent` to re-render unnecessarily.

**`useMemo`** - Memoizes the `columns` array so it's only computed once. Arrays are recreated on every render by default, which would cause child components to re-render even when the data hasn't changed.

**`React.memo`** - Wraps the component to prevent re-renders when props haven't changed. This is especially important for views that may be embedded in larger applications.

**Benefits:**
- Reduces unnecessary re-renders and improves performance
- Prevents child components from re-rendering when parent updates
- Maintains stable function/object references for dependency arrays
- Essential for complex views with many components

**Learn more:**
- [useCallback](https://react.dev/reference/react/useCallback) - React Documentation
- [useMemo](https://react.dev/reference/react/useMemo) - React Documentation
- [memo](https://react.dev/reference/react/memo) - React Documentation

---

## 2. Register the View as UI

In `src/index.tsx`, register your view:

```typescript
// src/index.tsx
import { enableLocalization } from './uxp';
import PortfolioView from './views/portfolio/PortfolioView';

// Register as UI (RECOMMENDED for v5 views)
registerUI({
    id: "portfolio-view",
    component: PortfolioView
});


// Enable localization
enableLocalization();

```

### UI vs Widget Registration

**Use `registerUI()` for views (pages):**
```typescript
registerUI({
    id: "portfolio-view",
    component: PortfolioView
});
```

**Use `registerWidget()` only for dashboard widgets:**
```typescript
registerWidget({
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
- `uis` array - List all UI components registered with `registerUI()`
- Each UI entry needs: `id`, `label`, `description`
- The `id` must match the ID used in `registerUI()`

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

- [Step 4: Add Navigation](./first-navigation.md) - Configure routes and add to navigation
