# IconPicker


IconPicker component - A form input for selecting FontAwesome and Phosphor icons



## Installation

```tsx
import { IconPicker } from 'uxp/components';
```

## Signature

```tsx
const IconPicker: React.FunctionComponent<IconPickerProps>
```

## Examples

```tsx
tsx
<IconPicker
  value="fas:bell"
  onChange={(iconStr) => setIcon(iconStr)}
  placeholder="Select an icon"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|No|-|-|
|onChange|(value: string) => void|Yes|-|-|
|label|string|No|-|-|
|disabled|boolean|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|defaultViewMode|'compact' \| 'expanded'|No|-|-|

## Related Types

- [IconPickerProps](../types/IconPickerProps.md)

