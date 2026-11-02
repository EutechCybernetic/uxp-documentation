# readImageDpi


Read the print resolution (DPI) a JPEG or PNG records: JPEG's JFIF density, else its EXIF
XResolution; PNG's pHYs. Resolves undefined when the file records none.


## Installation

```tsx
import { readImageDpi } from 'uxp/components';
```

## Signature

```tsx
function readImageDpi(blob: Blob): Promise<number | undefined>
```

