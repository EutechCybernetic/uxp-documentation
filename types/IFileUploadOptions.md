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

    /**
     * Extra request parameters sent with the file, e.g. an upload `event` and
     * the fields its handler reads (`{ event: 'profilepic', ObjectKey, ObjectType }`).
     */
    params?: Record<string, string>;
}
```

## Usage

```tsx
import { IFileUploadOptions } from 'uxp/components';
```

