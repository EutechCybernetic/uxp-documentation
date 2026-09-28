# Pill

> **Part of [PillInput](PillInput.md).** Usually used through PillInput. Use it directly to build a custom layout.


Individual Pill component that renders a formatted value with icon and styling



## Installation

```tsx
import { Pill } from 'uxp/components';
```

## Signature

```tsx
const Pill: React.FunctionComponent<PillComponentProps>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-text-pill-input-pill--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Pill live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"{user.name}"|
|allFields|[PillOption[]](../types/PillOption.md)|Yes|-|[ { label: 'Name', value: 'user.name' }, { label: 'Email', value: 'user.email' …|
|expressionMatcher|RegExp|Yes|-|/{(.*?)}/|
|pillConfiguration|[PillConfiguration](../types/PillConfiguration.md)|No|-|-|
|draggable|boolean|No|-|-|
|className|string|No|-|-|
|onClick|() => void|No|-|-|
|pillValuesSplitFn|(value: string) => string[]|No|-|-|
|typeIndex|number|No|-|-|
|showFomatters|boolean|No|-|-|
|onChangeFormatters|(value: string) => void|No|-|-|
|onClickFormatters|() => void|No|-|-|
|disabled|boolean|No|-|-|
|readOnly|boolean|No|-|-|

## Related Types

- [PillComponentProps](../types/PillComponentProps.md)
- [PillOption](../types/PillOption.md)
- [PillConfiguration](../types/PillConfiguration.md)
- [PillTypeConfig](../types/PillTypeConfig.md)

