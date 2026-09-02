# PillDropdown


The PillInput options panel as a standalone component: grouped, clickable pill
options with optional descriptions. Use it to offer placeholder pickers outside
a PillInput — popovers, sidebars, menus.


## Installation

```tsx
import { PillDropdown } from 'uxp/components';
```

## Signature

```tsx
const PillDropdown: React.FunctionComponent<PillDropdownProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|contextDataSections|[ContextDatasection[]](../types/ContextDatasection.md)|Yes|-|-|
|onSelect|(value: string, field: PillOption) => void|Yes|-|-|
|pillConfiguration|[PillConfiguration](../types/PillConfiguration.md)|No|-|-|
|pillValuesSplitFn|(value: string) => string[]|No|-|-|
|expressionMatcher|RegExp|No|-|-|
|className|string|No|-|-|
|autoHeight|boolean|No|-|-|
|showSectionHeaders|boolean|No|-|-|

## Related Types

- [PillDropdownProps](../types/PillDropdownProps.md)
- [ContextDatasection](../types/ContextDatasection.md)
- [PillOption](../types/PillOption.md)
- [PillConfiguration](../types/PillConfiguration.md)
- [PillTypeConfig](../types/PillTypeConfig.md)

