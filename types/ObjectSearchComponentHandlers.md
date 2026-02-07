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

    refreshCurrentPage: () => void
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

