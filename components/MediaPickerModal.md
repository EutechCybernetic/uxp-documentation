# MediaPickerModal

> **Part of [MediaPicker](MediaPicker.md).** Usually used through MediaPicker. Use it directly to build a custom layout.


The media browse dialog: a source rail beside a list-and-preview pane over
the user's library, the platform image gallery, font icons, an upload
drop-zone and a plain URL entry — whichever of those the field enables.



## Installation

```tsx
import { MediaPickerModal } from 'uxp/components';
```

## Signature

```tsx
const MediaPickerModal: React.FunctionComponent<IMediaPickerModalProps>
```

## Live preview

[Open MediaPickerModal in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-media-mediapickermodal--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|true|
|onClose|() => void|Yes|-|Log onClose={() => console.log('closed')}|
|onSelect|(value: string) => void|No|-|Log onSelect={(value) => console.log('selected', value)}|
|multiple|boolean|No|-|-|
|initialSelection|string[]|No|-|-|
|onSelectMultiple|(values: string[]) => void|No|-|-|
|mediaTypes|[MediaType[]](../types/MediaType.md)|Yes|-|['Image']|
|sources|Partial<Record<MediaPickerSource, boolean>>|No|-|-|
|defaultSource|[MediaPickerSource](../types/MediaPickerSource.md)|No|'library'|-|
|allowedTypes|string[]|No|-|-|
|saveToLibrary|boolean|No|-|-|
|uploadPath|string|No|'media-library/'|-|
|searchParameters|{ [key: string]: any }|No|-|-|
|currentValue|string|No|-|-|
|defaultViewMode|'compact' \| 'expanded'|No|-|-|

## Related Types

- [IMediaPickerModalProps](../types/IMediaPickerModalProps.md)
- [MediaType](../types/MediaType.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

