# ColorPicker

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-colorpicker--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ColorPicker live demo"
></iframe>




Color picker input field


## Installation

```tsx
import { ColorPicker } from 'uxp/components';
```

## Signature

```tsx
const ColorPicker: React.FunctionComponent<IColorPickerProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|color|string|Yes|-|-|
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

