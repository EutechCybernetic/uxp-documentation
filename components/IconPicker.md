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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-pickers-iconpicker--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconPicker live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-pickers-iconpicker--default&amp;viewMode=story&amp;args=placeholder%3ASelect+an+icon&amp;props=%7B%22value%22%3A%22fas%3Abell%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconPicker: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|No|-|"fas building"|
|onChange|(value: string) => void|Yes|-|-|
|label|string|No|-|-|
|className|string|No|-|-|
|defaultViewMode|'compact' \| 'expanded'|No|-|-|
|hideLabel|boolean|No|-|-|
|compactMode|boolean|No|-|-|
|placeholder|string|No|-|-|
|onClear|() => void|No|-|-|
|sources|Partial<Record<MediaPickerSource, boolean>>|No|-|-|
|allowedTypes|string[]|No|-|-|
|defaultSource|[MediaPickerSource](../types/MediaPickerSource.md)|No|'icons'|-|

## Related Types

- [IconPickerProps](../types/IconPickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

