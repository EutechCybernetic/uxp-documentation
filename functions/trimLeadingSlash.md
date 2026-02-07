# trimLeadingSlash


Removes leading slashes from a string.



## Installation

```tsx
import { trimLeadingSlash } from 'uxp/components';
```

## Signature

```tsx
function trimLeadingSlash(s: string): string
```

## Examples

```tsx
ts
const cleanPath = trimLeadingSlash('/api/v1/users');
console.log(cleanPath); // "api/v1/users"

const url = trimLeadingSlash('https://example.com');
console.log(url); // "https://example.com"
```

