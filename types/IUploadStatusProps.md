# IUploadStatusProps


UploadStatus component props


## Definition

```tsx
interface IUploadStatusProps {
    /**
     * Whether an upload is running. While it is, the progress bar replaces any
     * error from the previous attempt.
     */
    isUploading: boolean

    /**
     * Completion 0–100. Falsy means the transfer reports no progress, and the
     * bar runs indeterminate rather than sitting at zero.
     */
    progress?: number

    /**
     * Position in the current batch, 1-based. Only shown when the batch holds
     * more than one file.
     */
    uploadingIndex?: number

    /**
     * Size of the current batch.
     */
    uploadingTotal?: number

    /**
     * Message to show once the upload has stopped.
     */
    error?: string | null

    /**
     * Extra content shown alongside the error — the upload view uses it for its
     * per-batch failure count.
     */
    children?: React.ReactNode
}
```

## Usage

```tsx
import { IUploadStatusProps } from 'uxp/components';
```

