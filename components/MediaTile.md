# MediaTile


The one grid card of the media picker — used by the library, the gallery,
the icon grid and the icon variants grid.


## Installation

```tsx
import { MediaTile } from 'uxp/components';
```

## Signature

```tsx
const MediaTile: React.FunctionComponent<IMediaTileProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|name|string|No|-|-|
|thumbSrc|string|No|-|-|
|type|[MediaType](../types/MediaType.md)|No|-|-|
|selected|boolean|No|-|-|
|active|boolean|No|-|-|
|showName|boolean|No|-|-|
|onClick|() => void|No|-|-|
|onPreview|() => void|No|-|-|
|previewTitle|string|No|-|-|

## Related Types

- [IMediaTileProps](../types/IMediaTileProps.md)
- [MediaType](../types/MediaType.md)

