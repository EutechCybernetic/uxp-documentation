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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|checked|[CheckboxState](../types/CheckboxState.md)|Yes|-|-|
|onChange|(checked: boolean) => void|Yes|-|-|
|label|string \| React.ReactNode|No|-|-|
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

