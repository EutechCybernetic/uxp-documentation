# IconsView


The font-icon browser: a searchable grid of icons beside the shared preview
column, which carries the grid of every variant the previewed icon is
published in. Mounted by MediaPickerModal for its Icons source.


## Installation

```tsx
import { IconsView } from 'uxp/components';
```

## Signature

```tsx
const IconsView: React.FunctionComponent<IconsViewProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onPick|(iconString: string) => void|No|-|-|
|isSelected|(value: string) => boolean|No|-|-|
|onPreview|(iconString: string) => void|No|-|-|
|onPendingChange|(iconString: string) => void|No|-|-|
|previewSelected|boolean|No|-|-|
|onPreviewToggle|() => void|No|-|-|
|currentValue|string|No|-|-|

## Related Types

- [IconsViewProps](../types/IconsViewProps.md)

