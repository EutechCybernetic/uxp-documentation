# ImagePickerModal


Image browse dialog: keyword search of the platform image library
(Unsplash, proxied by the Lucy `SearchImagesFromUnsplash` service) plus
user uploads and the caller's media library.

An image-only MediaPickerModal.


## Installation

```tsx
import { ImagePickerModal } from 'uxp/components';
```

## Signature

```tsx
const ImagePickerModal: React.FunctionComponent<IImagePickerModalProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|onSelect|(url: string) => void|Yes|-|-|
|uploadPath|string|No|-|-|
|searchParameters|{ [key: string]: any }|No|-|-|
|sources|Partial<Record<MediaPickerSource, boolean>>|No|-|-|
|allowedTypes|string[]|No|-|-|
|defaultSource|[MediaPickerSource](../types/MediaPickerSource.md)|No|'gallery'|-|

## Related Types

- [IImagePickerModalProps](../types/IImagePickerModalProps.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

