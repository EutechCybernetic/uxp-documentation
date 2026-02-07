# View

## Definition

```tsx
export interface View {
    id: string,
    name: string,
    group?: string
    configurations: CustomViewConfigs,
    isFavourite?: boolean,
    isCustom?: boolean,
    key?: number,
}
```

## Usage

```tsx
import { View } from 'uxp/components';
```

## Related Types

- [CustomViewConfigs](../types/CustomViewConfigs.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)

