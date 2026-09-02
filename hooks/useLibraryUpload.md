# useLibraryUpload


Upload straight into the content store and — when enabled — record the file
in the media library. The upload URL is returned either way: a failed
library write must never cost the user their file.

`progress` is the transfer percentage (0-100) of the content-store PUT; the
library write that follows it is a single small call and isn't counted.
`uploadingIndex` / `uploadingTotal` describe the batch a multi-file upload is
working through, so callers can render "Uploading 2 of 5".

`isUploading` stays true for a beat after the transfer finishes — see
MIN_UPLOAD_FEEDBACK_MS.


## Installation

```tsx
import { useLibraryUpload } from 'uxp/components';
```

## Signature

```tsx
function useLibraryUpload(options?: ILibraryUploadOptions): { uploadToLibrary: (file: File) => Promise<string>; uploadAllToLibrary: (files: File[]) => Promise<{ urls: string[]; failed: string[]; }>; isUploading: boolean; progress: number; uploadingIndex: number; uploadingTotal: number; error: string; }
```

## Related Types

- [ILibraryUploadOptions](../types/ILibraryUploadOptions.md)

