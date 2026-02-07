# Input


A standard text box



## Installation

```tsx
import { Input } from 'uxp/components';
```

## Signature

```tsx
const Input: React.ForwardRefExoticComponent<React.RefAttributes<IInputInstanceProps> & IInputProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|type|[IInputType](../types/IInputType.md)|No|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|onFocus|() => void|No|-|-|
|onBlur|(vale: string) => void|No|-|-|
|onKeyDown|(e: React.KeyboardEvent<HTMLInputElement>, val: string) => void|No|-|-|
|className|string|No|-|-|
|hasIndicator|boolean|No|-|-|
|indicatorColor|string|No|-|-|
|isValid|boolean|No|-|-|
|inputAttr|{ [key: string]: string \| boolean }|No|-|-|
|placeholder|string|No|-|-|
|inline|boolean|No|-|-|
|styles|React.CSSProperties|No|-|-|
|readOnly|boolean|No|-|-|
|tabIndex|number|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|focus the input |
|getElement|() => React.MutableRefObject<HTMLInputElement>|this will return the <Input /> element |

## Related Types

- [IInputProps](../types/IInputProps.md)
- [IInputType](../types/IInputType.md)
- [SpacingMode](../types/SpacingMode.md)
- [IInputInstanceProps](../types/IInputInstanceProps.md)

