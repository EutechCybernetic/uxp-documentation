# ImagePickerModal

> **Part of [ImagePicker](ImagePicker.md).** Usually used through ImagePicker. Use it directly to build a custom layout.


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

## Live preview

[Open ImagePickerModal in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-image-imagepickermodal--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|true|
|onClose|() => void|Yes|-|Log onClose={() => console.log('closed')}|
|onSelect|(url: string) => void|Yes|-|Log onSelect={(url) => console.log('selected', url)}|
|uploadPath|string|No|-|-|
|searchParameters|{ [key: string]: any }|No|-|-|
|sources|Partial<Record<MediaPickerSource, boolean>>|No|-|-|
|allowedTypes|string[]|No|-|-|
|defaultSource|[MediaPickerSource](../types/MediaPickerSource.md)|No|'gallery'|-|

## Related Types

- [IImagePickerModalProps](../types/IImagePickerModalProps.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

