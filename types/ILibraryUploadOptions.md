# ILibraryUploadOptions


Options for `useLibraryUpload`.


## Definition

```tsx
export interface ILibraryUploadOptions {
    /**
     * Content-store path uploads go to.
     * @default 'media-library/'
     */
    uploadPath?: string

    /**
     * Overrides the account setting for this field.
     */
    saveToLibrary?: boolean
}
```

## Usage

```tsx
import { ILibraryUploadOptions } from 'uxp/components';
```

