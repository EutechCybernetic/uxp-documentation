# IMediaPickerModalProps


MediaPickerModal component props — the browse dialog on its own, for
triggers other than the ones MediaPicker provides.


## Definition

```tsx
export interface IMediaPickerModalProps {
    show: boolean
    onClose: () => void

    /**
     * Single-select callback — fired with the picked value, after which the
     * dialog closes.
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
}
```

## Usage

```tsx
import { IMediaPickerModalProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

