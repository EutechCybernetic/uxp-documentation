# LibraryView


The caller's own uploads, server-paged with infinite scroll.


## Installation

```tsx
import { LibraryView } from 'uxp/components';
```

## Signature

```tsx
const LibraryView: React.FunctionComponent<ILibraryViewProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|mediaTypes|[MediaType[]](../types/MediaType.md)|Yes|-|-|
|onPick|(url: string) => void|Yes|-|-|
|isSelected|(url: string) => boolean|No|-|-|
|onToggle|(url: string) => void|No|-|-|
|onPreview|(url: string) => void|No|-|-|
|activeValue|string|No|-|-|
|query|string|No|-|-|
|onQueryChange|(query: string) => void|No|-|-|
|typeFilter|string|No|-|-|
|onTypeFilterChange|(type: string) => void|No|-|-|
|hideFilters|boolean|No|-|-|
|grid|boolean|No|-|-|
|onItemsChange|(items: IMediaItem[]) => void|No|-|-|
|treeOpen|boolean|No|-|-|
|onTreeOpenChange|(open: boolean) => void|No|-|-|
|onFilteredChange|(filtered: boolean) => void|No|-|-|
|onTreeChange|(hasTree: boolean) => void|No|-|-|
|onSelectionLabelChange|(label: string) => void|No|-|-|

## Related Types

- [ILibraryViewProps](../types/ILibraryViewProps.md)
- [MediaType](../types/MediaType.md)
- [IMediaItem](../types/IMediaItem.md)

