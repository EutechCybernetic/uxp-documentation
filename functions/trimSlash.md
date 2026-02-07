# trimSlash


Removes trailing slashes from a string.



## Installation

```tsx
import { trimSlash } from 'uxp/components';
```

## Signature

```tsx
function trimSlash(s: string): string
```

## Examples

```tsx
ts
const cleanUrl = trimSlash('https://example.com/');
console.log(cleanUrl); // "https://example.com"

const path = trimSlash('/api/v1/');
console.log(path); // "/api/v1"
```

