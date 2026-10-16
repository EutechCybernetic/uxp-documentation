# getUrlFriendlyString


Converts a string to a URL-friendly slug: lowercase letters, numbers and single hyphens.
Accented letters become plain letters, `&` becomes `and`, apostrophes are dropped and any
other run of characters (spaces, underscores, symbols) becomes one hyphen.



## Installation

```tsx
import { getUrlFriendlyString } from 'uxp/components';
```

## Signature

```tsx
function getUrlFriendlyString(string: string, options?: boolean | { typing?: boolean }): string
```

## Examples

```tsx
getUrlFriendlyString('Hello World & More');   // "hello-world-and-more"
getUrlFriendlyString('Café_Menu ');           // "cafe-menu"
getUrlFriendlyString('Café_Menu ', { typing: true });  // "cafe-menu-"
```

