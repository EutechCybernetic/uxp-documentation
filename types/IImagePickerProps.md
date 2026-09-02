# IImagePickerProps


ImagePicker component props


## Definition

```tsx
interface IImagePickerProps {
    /**
     * The current image URL
     */
    value: string

    /**
     * Called with the selected/typed image URL
     */
    onChange: (url: string) => void

    /**
     * Placeholder for the URL input
     */
    placeholder?: string

    /**
     * Any extra css classes
     */
    className?: string

    /**
     * Disable the input + browse button
     */
    disabled?: boolean

    /**
     * Content-store path user uploads go to.
     * @default 'widget-designer/images/'
     */
    uploadPath?: string

    /**
     * Extra parameters merged into the image search request
     * (e.g. { orientation: 'landscape' })
     */
    searchParameters?: { [key: string]: any }

    /**
     * Turn individual sources on/off. All of gallery, library, upload and URL
     * are on by default.
     */
    sources?: Partial<Record<MediaPickerSource, boolean>>

    /**
     * FileInput-style MIME/extension restrictions for uploads.
     * Defaults to images only.
     */
    allowedTypes?: string[]

    /**
     * Source the dialog opens on.
     * @default 'gallery'
     */
    defaultSource?: MediaPickerSource
}
```

## Usage

```tsx
import { IImagePickerProps } from 'uxp/components';
```

## Related Types

- [MediaPickerSource](../types/MediaPickerSource.md)

