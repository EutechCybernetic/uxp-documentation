# IMediaPickerProps


MediaPicker component props


## Definition

```tsx
interface IMediaPickerProps extends InputSizeProps, InputStateProps {
    /**
     * Kinds of media this field accepts. `Icon` adds the font-icon source
     * (and image files from the library).
     */
    mediaTypes: MediaType[]

    /**
     * The current value. Icon values are icon strings (`fas:bell`), everything
     * else is a usable URL. An array when `multiple` is set.
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

