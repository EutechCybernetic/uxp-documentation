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
|onPreview|(url: string) => void|No|-|-|
|activeValue|string|No|-|-|

## Related Types

- [ILibraryViewProps](../types/ILibraryViewProps.md)
- [MediaType](../types/MediaType.md)

