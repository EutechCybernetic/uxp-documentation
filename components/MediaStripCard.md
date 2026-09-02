# MediaStripCard


One picked value: a fixed 4rem chip with a remove badge, shown under a field,
above the upload drop-zone, or stacked in the browse dialog's selection
column. `MediaThumb` decides how the value itself is drawn.


## Installation

```tsx
import { MediaStripCard } from 'uxp/components';
```

## Signature

```tsx
const MediaStripCard: React.FunctionComponent<IMediaStripCardProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|name|string|No|-|-|
|onRemove|() => void|No|-|-|
|removeTitle|string|Yes|-|-|

## Related Types

- [IMediaStripCardProps](../types/IMediaStripCardProps.md)

