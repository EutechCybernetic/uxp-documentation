# MediaPicker


A media field — image, icon, document, video or audio — backed by the user's
media library, the platform image gallery, font icons, uploads and plain URLs.



## Installation

```tsx
import { MediaPicker } from 'uxp/components';
```

## Signature

```tsx
const MediaPicker: React.FunctionComponent<IMediaPickerProps>
```

## Examples

```tsx
tsx
<MediaPicker
    mediaTypes={['Image']}
    value={imageUrl}
    onChange={url => setImageUrl(url as string)}
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-pickers-media-mediapicker--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="MediaPicker live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|mediaTypes|[MediaType[]](../types/MediaType.md)|Yes|-|['Image']|
|value|string \| string[]|Yes|-|"media/lobby.png"|
|onChange|(value: string \| string[]) => void|Yes|-|-|
|multiple|boolean|No|false|-|
|allowedTypes|string[]|No|-|-|
|sources|Partial<Record<MediaPickerSource, boolean>>|No|-|-|
|defaultSource|[MediaPickerSource](../types/MediaPickerSource.md)|No|'library'|-|
|variant|'compact' \| 'drop-zone'|No|'compact'|-|
|saveToLibrary|boolean|No|-|-|
|uploadPath|string|No|'media-library/'|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|searchParameters|{ [key: string]: any }|No|-|-|

## Related Types

- [IMediaPickerProps](../types/IMediaPickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MediaType](../types/MediaType.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

