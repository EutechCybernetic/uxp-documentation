# IconPicker

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-iconpicker--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconPicker live demo"
></iframe>



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
|className|string|No|-|-|
|defaultViewMode|'compact' \| 'expanded'|No|-|-|
|hideLabel|boolean|No|-|-|
|compactMode|boolean|No|-|-|
|placeholder|string|No|-|-|
|onClear|() => void|No|-|-|

## Related Types

- [IconPickerProps](../types/IconPickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

