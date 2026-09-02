# IFileUploadOptions


Options for a single file upload.


## Definition

```tsx
export interface IFileUploadOptions {
    /**
     * Content-store path to upload into (e.g. 'notes/uploads/images/').
     * A trailing slash is added if missing.
     */
    path: string;

    /**
     * Explicit stored file name. Defaults to `file-<uuid>.<ext>`.
     */
    fileName?: string;

    /**
     * Called with 0-100 as the upload streams.
     */
    onProgress?: (percent: number) => void;
}
```

## Usage

```tsx
import { IFileUploadOptions } from 'uxp/components';
```

