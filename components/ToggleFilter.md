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

## Live preview

[Open ToggleFilter in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-selection-togglefilter--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|[IToggleOption[]](../types/IToggleOption.md)|Yes|-|[ { label: 'Day', value: 'day' }, { label: 'Week', value: 'week' }, { label: 'M…|
|value|string|Yes|-|"week"|
|onChange|(newValue: string) => void|Yes|-|-|
|className|string|No|-|-|
|size|'small' \| 'medium' \| 'large'|No|'medium'|-|
|renderAsDropdown|{ minWidth: number, renderAsPill?: { minWidth?: number, maxWidth?: number } }|No|-|-|

## Related Types

- [IToggleFilterProps](../types/IToggleFilterProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IToggleOption](../types/IToggleOption.md)

