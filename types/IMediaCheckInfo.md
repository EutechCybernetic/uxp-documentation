# IMediaCheckInfo


What a field's `validate` check is given about a value before it is used.
Fields are filled in when they are known: pixels for images only, size and
MIME type for files and library rows.


## Definition

```tsx
export interface IMediaCheckInfo {
    /** The value (URL), or an object URL for a file not yet uploaded */
    value: string
    name?: string
    mimeType?: string
    /** Size in bytes */
    size?: number
    /** Width in pixels (images) */
    width?: number
    /** Height in pixels (images) */
    height?: number
    /** Print resolution in DPI, when the file records one (JPEG, PNG) */
    dpi?: number
}
```

## Usage

```tsx
import { IMediaCheckInfo } from 'uxp/components';
```

