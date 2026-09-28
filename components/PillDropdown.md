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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-text-pill-input-pilldropdown--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="PillDropdown live preview"
></iframe>

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

