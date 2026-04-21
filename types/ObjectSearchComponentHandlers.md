# ObjectSearchComponentHandlers


Handlers exposed by the ObjectSearchComponent for external control.


## Definition

```tsx
export interface ObjectSearchComponentHandlers {
    /**
     * Triggers export of the current view's data.
     */
    export: () => void;

    /**
     * Retrieves details of the current search state.
     */
    getDetails: () => ObjectSearchDetailsResponse;

    /** Refreshes current page data with loading state shown. */
    refreshCurrentPage: () => void;

    /** Refreshes current page data silently, without showing the loading state. */
    silentRefreshCurrentPage: () => void;

    /** Directly replaces the current page data with the provided array. No fetch is triggered. */
    setPageData: (items: RowData[]) => void;

    /** Returns the current page data (the visible rows). */
    getCurrentPageData: () => RowData[];

    /** Returns the currently applied filters. */
    getFilters: () => Filters;

    /** Sets filters programmatically. Must be a valid SimpleFilter: { filters: Record<string, any> }. Invalid input is ignored. */
    applyFilters: (filters: Filters) => void;
}
```

## Usage

```tsx
import { ObjectSearchComponentHandlers } from 'uxp/components';
```

## Related Types

- [ObjectSearchDetailsResponse](../types/ObjectSearchDetailsResponse.md)
- [View](../types/View.md)
- [CustomViewConfigs](../types/CustomViewConfigs.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [RowData](../types/RowData.md)

