# IMediaPickerModalProps


MediaPickerModal component props — the browse dialog on its own, for
triggers other than the ones MediaPicker provides.


## Definition

```tsx
export interface IMediaPickerModalProps {
    /**
     * @example true
     */
    show: boolean
    /**
     * @example Log
     * ```tsx
     * onClose={() => console.log('closed')}
     * ```
     */
    onClose: () => void

    /**
     * Single-select callback — fired with the picked value, after which the
     * dialog closes.
     * @example Log
     * ```tsx
     * onSelect={(value) => console.log('selected', value)}
     * ```
     */
    onSelect?: (value: string) => void

    /**
     * Let the user pick several values before confirming.
     */
    multiple?: boolean

    /**
     * Values already selected, re-seeded on every open (multiple mode).
     */
    initialSelection?: string[]

    /**
     * Multi-select callback — fired with every selected value on confirm.
     */
    onSelectMultiple?: (values: string[]) => void

    /**
     * Kinds of media this picker deals with. Drives the default sources and
     * the upload restriction.
     * @example ['Image']
     */
    mediaTypes: MediaType[]

    /**
     * Turn individual sources on/off. Defaults: library/upload/url on,
     * gallery when Image is a media type, icons when Icon is.
     */
    sources?: Partial<Record<MediaPickerSource, boolean>>

    /**
     * Source the dialog opens on.
     * @default 'library'
     */
    defaultSource?: MediaPickerSource

    /**
     * FileInput-style upload restriction. Derived from `mediaTypes` if omitted.
     */
    allowedTypes?: string[]

    /**
     * Overrides the account-wide "record uploads in the library" setting.
     */
    saveToLibrary?: boolean

    /**
     * Content-store path uploads go to.
     * @default 'media-library/'
     */
    uploadPath?: string

    /**
     * Extra parameters merged into the image gallery search request.
     */
    searchParameters?: { [key: string]: any }

    /**
     * The value the field currently holds. Icons source only — it highlights it.
     */
    currentValue?: string

    /**
     * How the icons source's preview column opens.
     * @deprecated No longer read — the icons preview always shows every
     * variant. Kept so existing callers still compile.
     */
    defaultViewMode?: 'compact' | 'expanded'

    /**
     * The host stores uploaded and camera files itself (e.g. as an object's picture) and
     * returns the value to commit. Without it files go to the content store / media library.
     */
    onUpload?: (file: File, source: 'upload' | 'camera') => Promise<string>

    /**
     * The host handles a value picked from an existing source (library, gallery, icons, link)
     * before it is committed: return a value to commit instead, or nothing to commit the pick
     * as is. A thrown error shows in the dialog and keeps it open. Single select only.
     */
    onPick?: (pick: IMediaPickerPick) => Promise<string | void>

    /**
     * A check run on a value before it is used: a previewed item, a typed link,
     * a chosen file or a camera photo. Return a message to block it (line 1 the
     * problem, line 2 after a newline a hint), or undefined when it is fine.
     * @example Max width
     * ```tsx
     * validate={(info) => info.width > 800 ? 'Image is too wide\nUse one 800 px wide or less' : undefined}
     * ```
     */
    validate?: (info: IMediaCheckInfo) => string | undefined

    /**
     * Shows a refresh button in the header. A click awaits this (e.g. reload
     * the rules `validate` uses), then runs the checks again.
     */
    onRefreshRules?: () => void | Promise<void>

    /**
     * Size and DPI rules for "Crop and resize". When set, an image that fails `validate`
     * (a previewed item, a typed link, a chosen file or a camera photo) offers it in its red
     * block. The cropped file is checked again, then uploaded like a chosen file and selected.
     * Without it there is no crop button.
     * @example { minWidth: 500, maxWidth: 1000, minHeight: 500, maxHeight: 1000 }
     */
    cropRules?: IImageCropRules

    /**
     * The dialog's title, e.g. "Profile picture"
     * @default "Select media"
     */
    title?: string

    /**
     * Files to start with (e.g. dropped on the field): the dialog opens on Upload with them, checked
     * and ready to crop. Read when the dialog opens.
     */
    initialFiles?: File[]

    /**
     * What the field asks for, shown as chips beside the title
     * @example ['JPEG, PNG or GIF', '500–1000 px', 'Up to 2 MB']
     */
    rules?: string[]
}
```

## Usage

```tsx
import { IMediaPickerModalProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)
- [MediaPickerSource](../types/MediaPickerSource.md)
- [IMediaPickerPick](../types/IMediaPickerPick.md)
- [IGalleryPickMeta](../types/IGalleryPickMeta.md)
- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [IImageCropRules](../types/IImageCropRules.md)

