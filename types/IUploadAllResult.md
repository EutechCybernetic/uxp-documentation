# IUploadAllResult


What `uploadAllToLibrary` resolves with.


## Definition

```tsx
export interface IUploadAllResult {
    /** URLs of the files that uploaded, in order */
    urls: string[]
    /** Names of the files that failed */
    failed: string[]
    /** The files that failed, each with its reason */
    errors: IUploadFailure[]
}
```

## Usage

```tsx
import { IUploadAllResult } from 'uxp/components';
```

## Related Types

- [IUploadFailure](../types/IUploadFailure.md)

