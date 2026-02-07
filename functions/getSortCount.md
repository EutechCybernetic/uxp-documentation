# getSortCount


Returns the number of columns currently sorted

sort - The sort configuration
returns Count of sorted columns



## Installation

```tsx
import { getSortCount } from 'uxp/components';
```

## Signature

```tsx
function getSortCount(sort: Sort): number
```

## Examples

```tsx
tsx
getSortCount({ name: 1, age: -1, status: 0 }) // 2
```

## Related Types

- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)

