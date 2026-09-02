# MediaPreview


The large, single preview of a media value: a picture or icon through
MediaThumb, a video's first frame, a PDF in a frame, a small text file as
text, and a type glyph with "preview not available" for everything else.

Deliberately separate from MediaThumb, which draws every tile of a grid: a
`<video>`, an `<iframe>` or a `fetch` in that component would mean one per
tile. This one is rendered once, by MediaPreviewPanel, and hands the cases
MediaThumb already covers straight back to it.


## Installation

```tsx
import { MediaPreview } from 'uxp/components';
```

## Signature

```tsx
const MediaPreview: React.FunctionComponent<IMediaPreviewProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|name|string|No|-|-|

## Related Types

- [IMediaPreviewProps](../types/IMediaPreviewProps.md)

