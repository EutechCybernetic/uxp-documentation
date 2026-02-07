# extractFirstItem


Extracts the first item from data, handling both arrays and objects.



## Installation

```tsx
import { extractFirstItem } from 'uxp/components';
```

## Signature

```tsx
function extractFirstItem(data: T | T[] | null | undefined): T | null
```

## Examples

```tsx
extractFirstItem([{ id: 1 }, { id: 2 }]); // Returns { id: 1 }
extractFirstItem({ id: 1 }); // Returns { id: 1 }
extractFirstItem([]); // Returns null
extractFirstItem(null); // Returns null
```

