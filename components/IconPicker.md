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

[Open IconPicker in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-iconpicker--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-iconpicker--docs&args=placeholder%3ASelect+an+icon&props=%7B%22value%22%3A%22fas%3Abell%22%7D>)

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

