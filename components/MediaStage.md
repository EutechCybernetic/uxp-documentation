# MediaStage


A media preview: the picture fitted on a plain stage, with a bar of facts at the bottom.
The picker shows every source this way.



## Installation

```tsx
import { MediaStage } from 'uxp/components';
```

## Signature

```tsx
const MediaStage: React.FunctionComponent<IMediaStageProps>
```

## Examples

```tsx
tsx
<MediaStage value={url} info={<><b>lobby.png</b> · PNG · 800 × 800 px</>} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|No|-|-|
|type|[MediaType](../types/MediaType.md)|No|-|-|
|name|string|No|-|-|
|info|React.ReactNode|No|-|-|
|actions|React.ReactNode|No|-|-|
|empty|React.ReactNode|No|-|-|
|onClose|() => void|No|-|-|
|className|string|No|-|-|

## Related Types

- [IMediaStageProps](../types/IMediaStageProps.md)
- [MediaType](../types/MediaType.md)

