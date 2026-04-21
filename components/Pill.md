# Pill


Individual Pill component that renders a formatted value with icon and styling


## Installation

```tsx
import { Pill } from 'uxp/components';
```

## Signature

```tsx
const Pill: React.FunctionComponent<PillComponentProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|allFields|[PillOption[]](../types/PillOption.md)|Yes|-|-|
|expressionMatcher|RegExp|Yes|-|-|
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

