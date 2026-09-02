# useFileUpload


Reusable file-upload hook for the platform content store, so widgets don't
hand-roll the upload flow.



## Installation

```tsx
import { useFileUpload } from 'uxp/components';
```

## Signature

```tsx
function useFileUpload(): { upload: (file: File, options: IFileUploadOptions) => Promise<IFileUploadResult>; isUploading: boolean; progress: number; error: string; }
```

## Examples

```tsx
tsx
const { upload, isUploading, progress, error } = useFileUpload();

async function onFile(file: File) {
    const { url } = await upload(file, { path: 'notes/uploads/images/' });
    setImageUrl(url);
}
```

