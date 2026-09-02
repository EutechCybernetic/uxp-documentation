# MediaThumb


The one place that decides how a media value looks: an icon string renders
through `Icon`, a picture as a real `<img>`, everything else as a type glyph.

Images deliberately go through `<img>` rather than `Icon` (which paints a
background image and so can't report a load failure) — an extensionless URL
is only *assumed* to be an image, and this is what makes that guess
self-correcting.

Sizing is the caller's: the box fills its parent and icons/glyphs follow the
parent's `font-size`.


## Installation

```tsx
import { MediaThumb } from 'uxp/components';
```

## Signature

```tsx
const MediaThumb: React.FunctionComponent<IMediaThumbProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|name|string|No|-|-|
|src|string|No|-|-|
|type|[MediaType](../types/MediaType.md)|No|-|-|
|fit|'cover' \| 'contain'|No|'cover'|-|

## Related Types

- [IMediaThumbProps](../types/IMediaThumbProps.md)
- [MediaType](../types/MediaType.md)

