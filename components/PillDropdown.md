# PillDropdown

> **Part of [PillInput](PillInput.md).** Usually used through PillInput. Use it directly to build a custom layout.


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

## Live preview

[Open PillDropdown in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-text-pill-input-pilldropdown--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|contextDataSections|[ContextDatasection[]](../types/ContextDatasection.md)|Yes|-|[ { label: 'User', fields: [ { label: 'Name', value: 'user.name' }, { label: 'E…|
|onSelect|(value: string, field: PillOption) => void|Yes|-|Log onSelect={(value, field) => console.log('picked', value, field)}|
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

