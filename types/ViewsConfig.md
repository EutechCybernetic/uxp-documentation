# ViewsConfig


Configuration for saved views.


## Definition

```tsx
export interface ViewsConfig {
    /**
     * Unique ID for the list, used to persist custom views for the user.
     */
    listId: string;

    /**
     * Default list of views available to all users.
     */
    defaultViews: View[];

    /**
     * If true, allows the logged-in user to manage their own custom views.
     */
    allowToMangeCustomViews?: boolean;

    /**
     * ID of the default view to be selected.
     */
    defaultviewId?: string;
}
```

## Usage

```tsx
import { ViewsConfig } from 'uxp/components';
```

## Related Types

- [View](../types/View.md)
- [CustomViewConfigs](../types/CustomViewConfigs.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [AdvancedFilterState](../types/AdvancedFilterState.md)

