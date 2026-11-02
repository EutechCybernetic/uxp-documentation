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

    /**
     * The host stores the file itself (e.g. as an object's picture) and returns the value to
     * emit. Replaces the content-store upload and the library record.
     */
    uploader?: (file: File) => Promise<string>

    /**
     * Library folder the new records go in (empty = top level). Needs the 5.2 server.
     */
    folderKey?: string
}
```

## Usage

```tsx
import { ILibraryUploadOptions } from 'uxp/components';
```

