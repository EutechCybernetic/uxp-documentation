# CustomViewConfigs

## Definition

```tsx
export interface CustomViewConfigs {
    filters?: Filters,
    columns?: string[],
    sort?: Sort,
    pageSize?: number,
    filterMode?: 'simple' | 'advanced',
    advancedFilter?: AdvancedFilterState,
}
```

## Usage

```tsx
import { CustomViewConfigs } from 'uxp/components';
```

## Related Types

- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [AdvancedFilterState](../types/AdvancedFilterState.md)

