# readImagePixels


Read an image's size in pixels. Resolves null when it does not load as an image.


## Installation

```tsx
import { readImagePixels } from 'uxp/components';
```

## Signature

```tsx
function readImagePixels(url: string): Promise<{ width: number, height: number } | null>
```

