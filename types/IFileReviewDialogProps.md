# IFileReviewDialogProps


FileReviewDialog component props


## Definition

```tsx
export interface IFileReviewDialogProps {
    /** Whether the dialog is open */
    show: boolean

    /** The files to check, e.g. the ones just dropped */
    files: File[]

    /** The dialog's title */
    title?: string

    /** FileInput-style MIME/extension restrictions for files added here */
    allowedTypes?: string[]

    /**
     * The check run on each file: a message (line 1 the problem, line 2 a hint) or nothing when fine
     */
    validate?: (info: IMediaCheckInfo) => string | undefined

    /** Size and DPI rules for "Crop and resize" on a file that fails the check */
    cropRules?: IImageCropRules

    /** The files that passed, when the user confirms */
    onUse: (files: File[]) => void

    /** Closed without using the files */
    onClose: () => void
}
```

## Usage

```tsx
import { IFileReviewDialogProps } from 'uxp/components';
```

## Related Types

- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [IImageCropRules](../types/IImageCropRules.md)

