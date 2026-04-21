# PasswordInput

A password input with a show/hide toggle button.
This is a wrapper around Input component with type="password".




## Installation

```tsx
import { PasswordInput } from 'uxp/components';
```

## Signature

```tsx
const PasswordInput: React.FunctionComponent<PasswordInputProps>
```

## Examples

```tsx
tsx
<PasswordInput
  value={password}
  onChange={setPassword}
  placeholder="Enter password"
/>
```

```tsx
tsx
// Recommended: Use Input directly
<Input
  type="password"
  value={password}
  onChange={setPassword}
  placeholder="Enter password"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|tabIndex|number|No|-|-|
|onFocus|() => void|No|-|-|
|onBlur|(value: string) => void|No|-|-|
|onKeyDown|(e: React.KeyboardEvent<HTMLInputElement>, val: string) => void|No|-|-|
|inline|boolean|No|-|-|
|style|React.CSSProperties|No|-|-|
|prefix|React.ReactNode|No|-|-|
|suffix|React.ReactNode|No|-|-|

## Related Types

- [PasswordInputProps](../types/PasswordInputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

