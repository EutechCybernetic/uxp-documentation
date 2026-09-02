# ToggleFilter

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-togglefilter--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ToggleFilter live demo"
></iframe>


This component presents a group of options from which one can be selected.
Suitable to select a single item from a list where the list is very small. Most often used for filters.
Follows v5 input pattern with theme support and keyboard navigation



## Installation

```tsx
import { ToggleFilter } from 'uxp/components';
```

## Signature

```tsx
const ToggleFilter: React.FunctionComponent<IToggleFilterProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|[IToggleOption[]](../types/IToggleOption.md)|Yes|-|-|
|value|string|Yes|-|-|
|onChange|(newValue: string) => void|Yes|-|-|
|className|string|No|-|-|
|size|'small' \| 'medium' \| 'large'|No|'medium'|-|
|renderAsDropdown|{ minWidth: number, renderAsPill?: { minWidth?: number, maxWidth?: number } }|No|-|-|

## Related Types

- [IToggleFilterProps](../types/IToggleFilterProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IToggleOption](../types/IToggleOption.md)

