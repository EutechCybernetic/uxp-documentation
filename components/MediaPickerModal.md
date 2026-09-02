# MediaPickerModal


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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|onSelect|(value: string) => void|No|-|-|
|multiple|boolean|No|-|-|
|initialSelection|string[]|No|-|-|
|onSelectMultiple|(values: string[]) => void|No|-|-|
|mediaTypes|[MediaType[]](../types/MediaType.md)|Yes|-|-|
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

