# GalleryView


Keyword search of the platform image library (Unsplash, proxied by the Lucy
`SearchImagesFromUnsplash` service), with infinite scroll.


## Installation

```tsx
import { GalleryView } from 'uxp/components';
```

## Signature

```tsx
const GalleryView: React.FunctionComponent<IGalleryViewProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|searchParameters|{ [key: string]: any }|No|-|-|
|onPick|(url: string) => void|Yes|-|-|
|isSelected|(url: string) => boolean|No|-|-|
|onPreview|(url: string) => void|No|-|-|
|activeValue|string|No|-|-|

## Related Types

- [IGalleryViewProps](../types/IGalleryViewProps.md)

