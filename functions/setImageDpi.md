# setImageDpi


Write a print resolution (DPI) into a JPEG or PNG: JPEG's JFIF density (the APP0 segment is
patched, or added when missing), PNG's pHYs chunk (replaced or added). Other files come back
unchanged.


## Installation

```tsx
import { setImageDpi } from 'uxp/components';
```

## Signature

```tsx
function setImageDpi(blob: Blob, dpi: number): Promise<Blob>
```

