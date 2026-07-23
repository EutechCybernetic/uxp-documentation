# PillInput

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-pillinput--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="PillInput live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|placeholder|string|No|-|-|
|contextDataSections|[ContextDatasection[]](../types/ContextDatasection.md)|Yes|-|-|
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

