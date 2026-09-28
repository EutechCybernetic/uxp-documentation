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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-pickers-image-imagepickermodal--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ImagePickerModal live preview"
></iframe>

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

