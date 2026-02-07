# trimTrailingSlash


Removes trailing slashes from a string.



## Installation

```tsx
import { trimTrailingSlash } from 'uxp/components';
```

## Signature

```tsx
function trimTrailingSlash(s: string): string
```

## Examples

```tsx
ts
const cleanUrl = trimTrailingSlash('https://example.com/');
console.log(cleanUrl); // "https://example.com"

const path = trimTrailingSlash('/api/v1/');
console.log(path); // "/api/v1"
```

