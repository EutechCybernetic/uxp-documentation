# DashboardFiltersApi


The filter state of the dashboard a widget belongs to.


## Definition

```tsx
export interface DashboardFiltersApi {
    /** The dashboard's current filter values. */
    filters: DashboardFilters;
    /** Replace the dashboard's filters (or update them from the previous value). */
    setFilters: (next: DashboardFilters | ((previous: DashboardFilters) => DashboardFilters)) => void;
    /** Clear every filter. */
    resetFilters: () => void;
}
```

## Usage

```tsx
import { DashboardFiltersApi } from 'uxp/components';
```

## Related Types

- [DashboardFilters](../types/DashboardFilters.md)

