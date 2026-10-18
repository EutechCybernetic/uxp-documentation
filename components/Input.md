# Input

A standard text input.




## Installation

```tsx
import { Input } from 'uxp/components';
```

## Signature

```tsx
const Input: React.ForwardRefExoticComponent<React.RefAttributes<InputHandlers> & InputProps>
```

## Live preview

[Open Input in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-text-input--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|type|[InputType](../types/InputType.md)|No|-|-|
|value|string|Yes|-|"B26"|
|onChange|(value: string, prefix?: string, suffix?: string) => void|Yes|-|onChange={(val, prefix) => { setValue(val); if (prefix !== undefined) setCurren…|
|onFocus|() => void|No|-|-|
|onBlur|(value: string) => void|No|-|-|
|onKeyDown|(e: React.KeyboardEvent<HTMLInputElement>, val: string) => void|No|-|-|
|className|string|No|-|-|
|prefix|[InputPrefixSuffix](../types/InputPrefixSuffix.md)|No|-|-|
|suffix|[InputPrefixSuffix](../types/InputPrefixSuffix.md)|No|-|-|
|inputAttr|{ [key: string]: string \| boolean }|No|-|-|
|placeholder|string|No|-|-|
|inline|boolean|No|-|-|
|style|React.CSSProperties|No|-|-|
|tabIndex|number|No|-|-|
|onClear|() => void|No|-|-|
|hideClear|boolean|No|-|-|
|mask|string|No|-|"B{YY}{SEQ}"|
|maskTokens|Record<string, InputMaskToken>|No|-|{ YY: { length: 2, pattern: /\d/, hint: 'YY' }, SEQ: { length: 2, pattern: /\d/…|
|maskStrict|boolean|No|false|false|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|-|
|getElement|() => HTMLInputElement \| null|-|

## Related Types

- [InputProps](../types/InputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [InputType](../types/InputType.md)
- [InputPrefixSuffix](../types/InputPrefixSuffix.md)
- [InputPrefixConfig](../types/InputPrefixConfig.md)
- [InputAddonDropdown](../types/InputAddonDropdown.md)
- [InputAddonOption](../types/InputAddonOption.md)
- [InputMaskToken](../types/InputMaskToken.md)
- [InputHandlers](../types/InputHandlers.md)

