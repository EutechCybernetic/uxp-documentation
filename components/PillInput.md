# PillInput


PillInput component - a CodeMirror-based input that converts expressions to visual pills.
Supports drag/drop, formatting, and contextual value selection.
Uses CodeMirror 6 with React 18 compatibility.



## Installation

```tsx
import { PillInput } from 'uxp/components';
```

## Signature

```tsx
const PillInput: React.ForwardRefExoticComponent<React.RefAttributes<PillInputHandlers> & PillInputProps>
```

## Examples

#### Basic usage with field options

```tsx
tsx
<PillInput
  value="Hello {user.name}!"
  onChange={setValue}
  contextDataSections={[
    { label: "User", fields: [{ label: "Name", value: "user.name" }] }
  ]}
/>
```

## Live preview

[Open PillInput in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-text-pill-input-pillinput--docs>)

### Variants

- [Basic usage with field options](<https://story.uxp.iviva.com/?path=/docs/inputs-text-pill-input-pillinput--docs&props=%7B%22value%22%3A%22Hello+%7Buser.name%7D%21%22%2C%22contextDataSections%22%3A%5B%7B%22label%22%3A%22User%22%2C%22fields%22%3A%5B%7B%22label%22%3A%22Name%22%2C%22value%22%3A%22user.name%22%7D%5D%7D%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"Hello {user.name}, your work order is ready"|
|onChange|(value: string) => void|Yes|-|-|
|placeholder|string|No|-|-|
|contextDataSections|[ContextDatasection[]](../types/ContextDatasection.md)|Yes|-|[ { label: 'User', fields: [ { label: 'Name', value: 'user.name' }, { label: 'E…|
|pillConfiguration|[PillConfiguration](../types/PillConfiguration.md)|No|-|-|
|className|string|No|-|-|
|onFocus|(event: Event) => void|No|-|-|
|onBlur|() => void|No|-|-|
|panelTitle|string|No|-|-|
|typeIndex|number|No|-|-|
|expressionPreset|[ExpressionPreset](../types/ExpressionPreset.md)|No|-|-|
|expressionMatcher|RegExp|No|-|-|
|pillValuesSplitFn|(value: string) => string[]|No|-|-|
|onClear|() => void|No|-|-|
|panelPosition|'left' \| 'right'|No|-|-|
|showFormatters|boolean|No|-|-|
|inspect|boolean|No|-|-|
|multiline|boolean|No|-|-|
|rows|number|No|-|-|
|maxRows|number|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|Programmatically focus the input |
|insertAtCursor|(value: string) => void|Insert text at current cursor position |

## Related Types

- [PillInputProps](../types/PillInputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [ContextDatasection](../types/ContextDatasection.md)
- [PillOption](../types/PillOption.md)
- [PillConfiguration](../types/PillConfiguration.md)
- [PillTypeConfig](../types/PillTypeConfig.md)
- [ExpressionPreset](../types/ExpressionPreset.md)
- [PillInputHandlers](../types/PillInputHandlers.md)

