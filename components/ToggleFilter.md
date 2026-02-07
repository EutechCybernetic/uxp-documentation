# ToggleFilter

This component presents a group of options from which one can be selected.
Suitable to select a single item from a list where the list is very small. Most often used for filters.



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
|backgroundColor|string|No|-|-|
|textColor|string|No|-|-|
|selectedBackgroundColor|string|No|-|-|
|selectedTextColor|string|No|-|-|
|disableShadow|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|
|renderAsDropdown|{ minWidth: number, renderAsPill?: { minWidth?: number, maxWidth?: number } }|No|-|-|

## Related Types

- [IToggleFilterProps](../types/IToggleFilterProps.md)
- [IToggleOption](../types/IToggleOption.md)
- [SpacingMode](../types/SpacingMode.md)

