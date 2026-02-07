# getUrlFriendlyString


Converts a string to URL-friendly format



## Installation

```tsx
import { getUrlFriendlyString } from 'uxp/components';
```

## Signature

```tsx
function getUrlFriendlyString(string: string, removeSlashes?: boolean): string
```

## Examples

```tsx
const slug = getUrlFriendlyString('Hello World & More');
console.log(slug); // "hello-world-and-more"
```

