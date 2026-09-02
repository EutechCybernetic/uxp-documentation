# IUploadViewProps


UploadView component props


## Definition

```tsx
interface IUploadViewProps {
    /**
     * FileInput-style MIME/extension restrictions
     */
    allowedTypes?: string[]

    /**
     * Content-store path uploads go to
     * @default 'media-library/'
     */
    uploadPath?: string

    /**
     * Overrides the account-wide "record uploads in the library" setting
     */
    saveToLibrary?: boolean

    /**
     * Let the user pick several files before uploading.
     * @default false
     */
    multiple?: boolean

    /**
     * Fired whenever the picked-but-not-yet-uploaded list changes. The host
     * renders its single-mode "Upload & select" button from this.
     */
    onPendingFilesChange?: (files: File[]) => void

    /**
     * Bumped by the host to start the upload — any changing value works, a
     * timestamp is the simplest. The initial value never uploads.
     */
    uploadRequestedAt?: number

    /**
     * Called with the URLs of the uploaded files
     */
    onUploaded: (urls: string[]) => void
}
```

## Usage

```tsx
import { IUploadViewProps } from 'uxp/components';
```

