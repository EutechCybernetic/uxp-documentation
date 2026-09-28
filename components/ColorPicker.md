# ColorPicker



Color picker input field



## Installation

```tsx
import { ColorPicker } from 'uxp/components';
```

## Signature

```tsx
const ColorPicker: React.FunctionComponent<IColorPickerProps>
```

## Live preview

[Open ColorPicker in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-color-colorpicker--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|color|string|Yes|-|"#1e88e5"|
|onChange|(color: string) => void|Yes|-|-|
|className|string|No|-|-|
|displayFormat|[IColorTypes](../types/IColorTypes.md)|No|-|-|
|returnFormat|[IColorTypes](../types/IColorTypes.md)|No|-|-|
|placeholder|string|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|dropdownMinWidth|number \| string|No|-|-|
|hideLabels|boolean|No|-|-|
|onClear|() => void|No|-|-|
|mode|'simple' \| 'complex'|No|-|-|
|enableDefaultPresets|boolean|No|-|-|
|presets|string[]|No|-|-|
|enableThemeVariables|boolean|No|-|-|
|defaultTab|[ColorPickerTab](../types/ColorPickerTab.md)|No|-|-|
|inputRows|number|No|-|-|

## Related Types

- [IColorPickerProps](../types/IColorPickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IColorTypes](../types/IColorTypes.md)
- [ColorPickerTab](../types/ColorPickerTab.md)

