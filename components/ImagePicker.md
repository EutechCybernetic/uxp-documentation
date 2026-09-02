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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
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

