# TextArea


A standard textarea (multi line text box)



## Installation

```tsx
import { TextArea } from 'uxp/components';
```

## Signature

```tsx
const TextArea: React.ForwardRefExoticComponent<React.RefAttributes<ITextAreaInstanceProps> & ITextAreaProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|onFocus|() => void|No|-|-|
|onBlur|(vale: string) => void|No|-|-|
|onKeyDown|(e: React.KeyboardEvent<HTMLTextAreaElement>, val: string) => void|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|tabIndex|number|No|-|-|
|rows|number|No|-|-|
|cols|number|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|focus the input |
|getElement|() => React.MutableRefObject<HTMLTextAreaElement>|this will return the <TextArea /> element |

## Related Types

- [ITextAreaProps](../types/ITextAreaProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [ITextAreaInstanceProps](../types/ITextAreaInstanceProps.md)

