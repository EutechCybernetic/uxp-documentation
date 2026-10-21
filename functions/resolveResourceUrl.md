# resolveResourceUrl


Maps a CDN URL (uxp.iviva.com / static.iviva.com) to the offline-resources
mirror on an offline deployment. Online, and for any other URL, it returns
the URL unchanged. Same mapping as the server's RewriteForOffline.



## Installation

```tsx
import { resolveResourceUrl } from 'uxp/components';
```

## Signature

```tsx
function resolveResourceUrl(url: string): string
```

## Examples

```tsx
const logo = resolveResourceUrl('https://static.iviva.com/iviva-logo-dark.png');
// offline: '/Resources/UXP/offline-resources/static/iviva-logo-dark.png'
```

