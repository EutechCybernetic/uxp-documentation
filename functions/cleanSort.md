# cleanSort


Removes columns with no sort order (0) from the sort configuration

sort - The sort configuration to clean
returns Cleaned sort configuration with only sorted columns



## Installation

```tsx
import { cleanSort } from 'uxp/components';
```

## Signature

```tsx
function cleanSort(sort: Sort): Sort
```

## Examples

```tsx
tsx
const cleaned = cleanSort({ name: 1, age: 0, status: -1 });
// Result: { name: 1, status: -1 }
```

## Related Types

- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)

