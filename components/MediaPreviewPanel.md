# MediaPreviewPanel


The detail column of the media picker: a back chevron out of the preview, the
value's name, a large preview of it and whatever controls the source
contributes.


## Installation

```tsx
import { MediaPreviewPanel } from 'uxp/components';
```

## Signature

```tsx
const MediaPreviewPanel: React.FunctionComponent<IMediaPreviewPanelProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|name|string|No|-|-|
|children|React.ReactNode|No|-|-|
|selected|boolean|No|-|-|
|onToggle|() => void|No|-|-|
|onClose|() => void|No|-|-|
|closeTitle|string|No|-|-|

## Related Types

- [IMediaPreviewPanelProps](../types/IMediaPreviewPanelProps.md)

