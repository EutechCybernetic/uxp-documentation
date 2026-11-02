# ILibraryUpload


What `useLibraryUpload` returns.


## Definition

```tsx
export interface ILibraryUpload {
    /** Upload one file; resolves with its URL */
    uploadToLibrary: (file: File) => Promise<string>
    /** Upload several files one after another */
    uploadAllToLibrary: (files: File[], uploadOptions?: IUploadAllOptions) => Promise<IUploadAllResult>
    isUploading: boolean
    /** Transfer percentage (0-100) of the current file */
    progress: number
    /** Position of the current file in the batch, 1-based */
    uploadingIndex: number
    /** Size of the batch */
    uploadingTotal: number
    error: string
}
```

## Usage

```tsx
import { ILibraryUpload } from 'uxp/components';
```

## Related Types

- [IUploadAllOptions](../types/IUploadAllOptions.md)
- [IUploadAllResult](../types/IUploadAllResult.md)
- [IUploadFailure](../types/IUploadFailure.md)

