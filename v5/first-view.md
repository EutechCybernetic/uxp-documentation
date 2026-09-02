# Create Your First View

Create a React view component and register it as a page.

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

## 2. Register the View

In `src/index.tsx`, register your view as a component that can be used as a page:

```typescript
// src/index.tsx
import { enableLocalization, registerComponent } from './uxp';
import PortfolioView from './views/portfolio/PortfolioView';

registerComponent({
    id: "portfolio-view",
    component: PortfolioView,
    modes: ["ui"],          // a page — reachable at a URL
});

// Enable localization
enableLocalization();
```

`registerComponent` is the one registry for everything your app contributes. What a component *is* comes
from its `modes`, not from which function registered it:

| Mode | Where it can be used |
|---|---|
| `ui` | A page. An admin routes a URL to it from `Configuration.yml`. |
| `widget` | A tile. It appears in the dashboard widget drawer, to be placed on a grid. |
| `background` | A surface rendered behind a dashboard's widgets. |

A component can declare more than one — `modes: ["widget", "ui"]` registers something usable both ways.

### Why a page is a `ui`, not a widget

- **It decides where the component can be placed.** A `ui` is what a navigation link's `pageId` can
  point at; a `widget` is what the dashboard drawer offers. Registering a page as a widget puts it in the
  drawer, where someone will eventually drop a full page into a dashboard cell.
- **It keeps the widget drawer honest.** The drawer should list tiles, not pages.
- **It is what a full-page component is built for** — it receives the URL's params and query directly,
  and it owns the whole content area rather than a grid cell.

> **Coming from `registerUI` / `registerWidget`?** Both still work — they are thin adapters that call
> `registerComponent` for you, mapping to `modes: ['ui']` and `modes: ['widget']` respectively. Prefer
> `registerComponent` in new code: one function, explicit modes, and a component that needs to be both
> stops being two registrations. See [Unified Component Registry](./unified-components.md) for the full
> API and how to migrate an existing app.

---

## 3. Update bundle.json

Add your component to `bundle.json`:

```json
{
    "id": "iviva-<yourapp>-app",
    "author": "",
    "components": [
        {
            "id": "portfolio-view",
            "name": "Portfolio View",
            "description": "Portfolio listing page",
            "modes": ["ui"],
            "tags": [],
            "icon": ""
        }
    ]
}
```

**Key Points:**
- `id` - Bundle identifier (format: `iviva-<appname>-app`)
- `components` array - every component you register, whatever its modes
- The component `id` must match the one passed to `registerComponent()`
- iviva reads `bundle.json` at upload time, **without running your code** — so anything serialisable
  (`name`, `description`, `modes`, `icon`, `tags`, permissions) lives here and **wins** over the same
  field passed in code. The React reference, `configs` and `defaultProps` can only live in code.

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

- [Add Navigation](./first-navigation.md) - Configure routes and add to navigation
- [Building Pages & Dashboards](./building-pages.md) - The other ways to build a page, and when to use each
