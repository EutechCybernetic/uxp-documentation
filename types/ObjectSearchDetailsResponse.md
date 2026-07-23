# ObjectSearchDetailsResponse


Response object containing details of the current search state.


## Definition

```tsx
interface ObjectSearchDetailsResponse {
    /**
     * Currently selected view configuration.
     */
    selectedView: View;

    /**
     * Current search query string.
     */
    query: string;

    /**
     * Current applied filters.
     */
    filters: Filters;

    /**
     * Current sorting configuration.
     */
    sort: Sort;

    /**
     * List of selected column IDs.
     */
    selectedColumns: string[];

    /**
     * Number of items per page.
     */
    pageSize: number;

    /**
     * Current page number.
     */
    page: number;

    /**
     * Total number of items.
     */
    total: number;
}
```

## Usage

```tsx
import { ObjectSearchDetailsResponse } from 'uxp/components';
```

## Related Types

- [View](../types/View.md)
- [CustomViewConfigs](../types/CustomViewConfigs.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [AdvancedFilterState](../types/AdvancedFilterState.md)

