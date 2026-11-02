# IUploadAllOptions


Per-file callbacks for `uploadAllToLibrary`.


## Definition

```tsx
export interface IUploadAllOptions {
    /** A file's upload starts. `index` is its place in the list passed in. */
    onFileStart?: (file: File, index: number) => void
    /** A file's upload ended: with its URL, or with the reason it failed. */
    onFileDone?: (file: File, index: number, result: { url?: string, error?: string }) => void
}
```

## Usage

```tsx
import { IUploadAllOptions } from 'uxp/components';
```

