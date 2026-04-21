# ToggleFilter

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
|renderAsDropdown|{ minWidth: number, renderAsPill?: { minWidth?: number, maxWidth?: number } }|No|-|-|

## Related Types

- [IToggleFilterProps](../types/IToggleFilterProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IToggleOption](../types/IToggleOption.md)

