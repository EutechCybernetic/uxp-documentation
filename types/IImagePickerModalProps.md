# IImagePickerModalProps


ImagePickerModal component props — the browse dialog on its own,
for triggers other than the default input.


## Definition

```tsx
interface IImagePickerModalProps {
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
     * @example Log
     * ```tsx
     * onSelect={(url) => console.log('selected', url)}
     * ```
     */
    onSelect: (url: string) => void
    uploadPath?: string
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
import { IImagePickerModalProps } from 'uxp/components';
```

## Related Types

- [MediaPickerSource](../types/MediaPickerSource.md)

