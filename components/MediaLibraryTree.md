# MediaLibraryTree


The media library's folders and tags (My Media, and the picker's Library tab) in two
sections: "My media" (my folders; Private first) and "Shared with me" (what others share,
by owner). Add, edit and delete show on my own folders and tags when the host handles them;
the Private folder can't be changed.


## Installation

```tsx
import { MediaLibraryTree } from 'uxp/components';
```

## Signature

```tsx
const MediaLibraryTree: React.FunctionComponent<IMediaLibraryTreeProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|mode|'folders' \| 'tags'|Yes|-|-|
|onModeChange|(mode: 'folders' \| 'tags') => void|Yes|-|-|
|folders|[IMediaFolder[]](../types/IMediaFolder.md)|Yes|-|-|
|tags|[IMediaTag[]](../types/IMediaTag.md)|Yes|-|-|
|selection|[MediaLibrarySelection](../types/MediaLibrarySelection.md)|Yes|-|-|
|onSelect|(selection: MediaLibrarySelection) => void|Yes|-|-|
|loading|boolean|No|-|-|
|onAddFolder|(parentKey: string \| null) => void|No|-|-|
|onEditFolder|(folder: IMediaFolder) => void|No|-|-|
|onDeleteFolder|(folder: IMediaFolder) => void|No|-|-|
|onSetDefaultFolder|(folder: IMediaFolder) => void|No|-|-|
|onEditTag|(tag: IMediaTag) => void|No|-|-|
|onDeleteTag|(tag: IMediaTag) => void|No|-|-|

## Related Types

- [IMediaLibraryTreeProps](../types/IMediaLibraryTreeProps.md)
- [IMediaFolder](../types/IMediaFolder.md)
- [IMediaTag](../types/IMediaTag.md)
- [MediaLibrarySelection](../types/MediaLibrarySelection.md)

