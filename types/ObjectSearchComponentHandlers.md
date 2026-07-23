# ObjectSearchComponentHandlers


Handlers exposed by the ObjectSearchComponent for external control.


## Definition

```tsx
export interface ObjectSearchComponentHandlers {
    /**
     * Triggers export of the current view's data. Resolves when the export
     * finishes so the caller can reflect an in-progress/loading state.
     */
    export: () => Promise<void>;

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

    /** Returns whether the filter panel is currently open. */
    isFilterPanelOpen: () => boolean;
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
- [AdvancedFilterState](../types/AdvancedFilterState.md)
- [RowData](../types/RowData.md)

