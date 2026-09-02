# useDashboardFilters


Read and set the filters of the dashboard the widget is rendered in.

Each `EmbeddedDashboard` owns its own filter state and merges it into every widget's props, so a
filter widget affects only its own dashboard — a dashboard inside a details panel and the one on
the page behind it stay independent, and a nested dashboard shadows its parent.



## Installation

```tsx
import { useDashboardFilters } from 'uxp/components';
```

## Signature

```tsx
function useDashboardFilters(): DashboardFiltersApi
```

## Examples

```tsx
const { filters, setFilters } = useDashboardFilters();
<DateRangePicker
    startDate={filters.startDate}
    endDate={filters.endDate}
    onChange={(startDate, endDate, preset) => setFilters(f => ({ ...f, startDate, endDate, preset }))}
/>
```

## Related Types

- [DashboardFiltersApi](../types/DashboardFiltersApi.md)
- [DashboardFilters](../types/DashboardFilters.md)

