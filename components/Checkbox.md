# Checkbox


A checkbox component that can render boolean and intermediate states in multiple visual styles.



## Installation

```tsx
import { Checkbox } from 'uxp/components';
```

## Signature

```tsx
const Checkbox: React.ForwardRefExoticComponent<React.RefAttributes<ICheckboxInstanceProps> & ICheckboxProps>
```

## Examples

```tsx
<Checkbox
    checked={checked}
    onChange={(isChecked) => setChecked(isChecked)}
    label='Are you sure'
/>
```

```tsx
<Checkbox
    checked='intermediate'
    onChange={(isChecked) => setChecked(isChecked)}
    label='Partial selection'
    type="switch-box"
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-selection-checkbox--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Checkbox live preview"
></iframe>

### Variants

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-selection-checkbox--default&amp;viewMode=story&amp;args=checked%3Aintermediate%3Blabel%3APartial+selection%3Btype%3Aswitch-box"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Checkbox: Example 2"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|checked|[CheckboxState](../types/CheckboxState.md)|Yes|-|true|
|onChange|(checked: boolean) => void|Yes|-|-|
|label|string \| React.ReactNode|No|-|"Send email alerts"|
|inputAttr|{ [key: string]: string \| boolean }|No|-|-|
|type|[ICheckboxType](../types/ICheckboxType.md)|No|-|-|
|className|string|No|-|-|
|labelStyles|React.CSSProperties|No|-|-|
|tabIndex|number|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|-|

## Related Types

- [ICheckboxProps](../types/ICheckboxProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [CheckboxState](../types/CheckboxState.md)
- [ICheckboxType](../types/ICheckboxType.md)
- [ICheckboxInstanceProps](../types/ICheckboxInstanceProps.md)

