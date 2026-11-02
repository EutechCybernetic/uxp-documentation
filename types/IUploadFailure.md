# IUploadFailure


A file that did not upload, and why.


## Definition

```tsx
export interface IUploadFailure {
    file: File
    /** The reason the upload gave. Empty when it gave none. */
    message: string
}
```

## Usage

```tsx
import { IUploadFailure } from 'uxp/components';
```

