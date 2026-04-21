# Input


A standard text box



## Installation

```tsx
import { Input } from 'uxp/components';
```

## Signature

```tsx
const Input: React.ForwardRefExoticComponent<React.RefAttributes<InputHandlers> & InputProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|type|[InputType](../types/InputType.md)|No|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|onFocus|() => void|No|-|-|
|onBlur|(vale: string) => void|No|-|-|
|onKeyDown|(e: React.KeyboardEvent<HTMLInputElement>, val: string) => void|No|-|-|
|className|string|No|-|-|
|prefix|React.ReactNode|No|-|-|
|suffix|React.ReactNode|No|-|-|
|inputAttr|{ [key: string]: string \| boolean }|No|-|-|
|placeholder|string|No|-|-|
|inline|boolean|No|-|-|
|style|React.CSSProperties|No|-|-|
|tabIndex|number|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|focus the input |
|getElement|() => React.MutableRefObject<HTMLInputElement>|this will return the <Input /> element |

## Related Types

- [InputProps](../types/InputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [InputType](../types/InputType.md)
- [InputHandlers](../types/InputHandlers.md)

