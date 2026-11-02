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
     * @example Log
     * ```tsx
     * onUploaded={(urls) => console.log('uploaded', urls)}
     * ```
     */
    onUploaded: (urls: string[]) => void

    /**
     * The host stores each file itself (MediaPicker `onUpload`)
     */
    uploader?: (file: File) => Promise<string>

    /**
     * The field's check, run on each chosen file. A file it refuses shows the
     * reason and is left out of the upload.
     */
    validate?: (info: IMediaCheckInfo) => string | undefined

    /**
     * Change it to run the checks again (e.g. after the rules were refreshed).
     */
    checkKey?: number

    /**
     * Fired with true while the chosen files can't be uploaded: one is still
     * being checked, or (single select) the file failed its check.
     */
    onBlockedChange?: (blocked: boolean) => void

    /**
     * Size and DPI rules for "Crop and resize". When set, a chosen image that fails the
     * check offers it; the cropped file replaces the chosen one and is checked again.
     */
    cropRules?: IImageCropRules

    /**
     * Multiple mode: an uploaded file was deleted from the strip, so the host takes it out of the selection
     */
    onRemoved?: (url: string) => void

    /**
     * Files to start with (e.g. dropped on the field). Read when the view opens.
     */
    initialFiles?: File[]

    /**
     * Multiple mode: only check the files (and crop them); nothing is uploaded. Files that pass are
     * reported through `onReadyChange`.
     */
    localOnly?: boolean

    /**
     * With `localOnly`: the files that passed their check, whenever that changes
     */
    onReadyChange?: (files: File[]) => void

    /**
     * Single select: fired with the chosen file's "Crop and resize" while it is refused and can be
     * cropped (else null), so the host can show the fix in its own toolbar (phones)
     */
    onFixChange?: (fix: (() => void) | null) => void

    /**
     * The host shows "Crop and resize" (from `onFixChange`): the check's notice points to it and
     * drops its own button
     */
    fixInToolbar?: boolean
}
```

## Usage

```tsx
import { IUploadViewProps } from 'uxp/components';
```

## Related Types

- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [IImageCropRules](../types/IImageCropRules.md)

