# hasSort


Checks if any columns are currently sorted

sort - The sort configuration to check
returns True if at least one column has a sort order



## Installation

```tsx
import { hasSort } from 'uxp/components';
```

## Signature

```tsx
function hasSort(sort: Sort): boolean
```

## Examples

```tsx
tsx
hasSort({ name: 1, age: 0 }) // true
hasSort({ name: 0, age: 0 }) // false
```

## Related Types

- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)

