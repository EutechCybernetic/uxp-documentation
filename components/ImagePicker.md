# ImagePicker


An image URL input with a browse suffix — opens the image browser
(search the image library or upload your own).



## Installation

```tsx
import { ImagePicker } from 'uxp/components';
```

## Signature

```tsx
const ImagePicker: React.FunctionComponent<IImagePickerProps>
```

## Examples

```tsx
tsx
<ImagePicker
    value={imageUrl}
    onChange={url => setImageUrl(url)}
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-pickers-image-imagepicker--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ImagePicker live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"/content/media/lobby.png"|
|onChange|(url: string) => void|Yes|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|disabled|boolean|No|-|-|
|uploadPath|string|No|'widget-designer/images/'|-|
|searchParameters|{ [key: string]: any }|No|-|-|
|sources|Partial<Record<MediaPickerSource, boolean>>|No|-|-|
|allowedTypes|string[]|No|-|-|
|defaultSource|[MediaPickerSource](../types/MediaPickerSource.md)|No|'gallery'|-|

## Related Types

- [IImagePickerProps](../types/IImagePickerProps.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

