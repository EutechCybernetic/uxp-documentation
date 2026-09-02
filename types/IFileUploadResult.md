# IFileUploadResult


Result of a successful upload.


## Definition

```tsx
export interface IFileUploadResult {
    /**
     * Absolute URL the uploaded file is served from.
     */
    url: string;

    /**
     * The stored file name.
     */
    fileName: string;
}
```

## Usage

```tsx
import { IFileUploadResult } from 'uxp/components';
```

