# textSearch


Performs a text search with case sensitivity option



## Installation

```tsx
import { textSearch } from 'uxp/components';
```

## Signature

```tsx
function textSearch(value: any, query: string, ignoreCase?: boolean): boolean
```

## Examples

```tsx
const found = textSearch('Hello World', 'world', true);
console.log(found); // true
```

