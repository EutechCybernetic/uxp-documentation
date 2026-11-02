# IMediaPickerProps


MediaPicker component props


## Definition

```tsx
interface IMediaPickerProps extends InputSizeProps, InputStateProps {
    /**
     * Kinds of media this field accepts. `Icon` adds the font-icon source
     * (and image files from the library).
     * @example ['Image']
     */
    mediaTypes: MediaType[]

    /**
     * The current value. Icon values are icon strings (`fas:bell`), everything
     * else is a usable URL. An array when `multiple` is set.
     * @example "media/lobby.png"
     */
    value: string | string[]

    /**
     * Called with the new value
     */
    onChange: (value: string | string[]) => void

    /**
     * Let the user pick several values.
     * @default false
     */
    multiple?: boolean

    /**
     * FileInput-style MIME/extension restrictions for uploads.
     * Derived from `mediaTypes` if omitted.
     */
    allowedTypes?: string[]

    /**
     * Turn individual sources on/off. Defaults: library/upload/url on,
     * gallery when Image is a media type, icons when Icon is.
     */
    sources?: Partial<Record<MediaPickerSource, boolean>>

    /**
     * Tab the browse dialog opens on.
     * @default 'library'
     */
    defaultSource?: MediaPickerSource

    /**
     * How the field itself is presented: a single-row compact drop target with
     * the browse affordance inside it, or a full drop-zone.
     * @default 'compact'
     */
    variant?: 'compact' | 'drop-zone'

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
     * Empty-state text for the field — the compact row's label, or the
     * drop-zone's caption.
     */
    placeholder?: string

    className?: string

    /**
     * Extra parameters merged into the image gallery search request
     * (e.g. { orientation: 'landscape' })
     */
    searchParameters?: { [key: string]: any }

    /**
     * The host stores uploaded and camera files itself and returns the value to emit.
     * Without it files go to the content store / media library (see MediaPickerModal).
     */
    onUpload?: (file: File, source: 'upload' | 'camera') => Promise<string>

    /**
     * The host handles a library, gallery, icon or link pick before it is emitted
     * (see MediaPickerModal `onPick`).
     */
    onPick?: (pick: IMediaPickerPick) => Promise<string | void>

    /**
     * A check run on a value before it is used: a file dropped on the field, and
     * in the dialog a previewed item, a typed link, a chosen file or a camera
     * photo. Return a message to block it (line 1 the problem, line 2 after a
     * newline a hint), or undefined when it is fine (see MediaPickerModal `validate`).
     */
    validate?: (info: IMediaCheckInfo) => string | undefined

    /**
     * Shows a refresh button in the dialog header. A click awaits this, then
     * runs the checks again (see MediaPickerModal `onRefreshRules`).
     */
    onRefreshRules?: () => void | Promise<void>

    /**
     * Size and DPI rules for "Crop and resize" in the dialog: an image that fails `validate`
     * offers it (see MediaPickerModal `cropRules`). Without it there is no crop button.
     */
    cropRules?: IImageCropRules
}
```

## Usage

```tsx
import { IMediaPickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MediaType](../types/MediaType.md)
- [MediaPickerSource](../types/MediaPickerSource.md)
- [IMediaPickerPick](../types/IMediaPickerPick.md)
- [IGalleryPickMeta](../types/IGalleryPickMeta.md)
- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [IImageCropRules](../types/IImageCropRules.md)

