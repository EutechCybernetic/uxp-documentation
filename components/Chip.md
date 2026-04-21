# Chip


A component that displays a chip with a label and optional icon, used for tags or filters.



## Installation

```tsx
import { Chip } from 'uxp/components';
```

## Signature

```tsx
const Chip: React.FunctionComponent<ChipProps>
```

## Examples

```tsx
<Chip
  label="Filter"
  icon="filter"
/>
```

```tsx
<Chip
  label="Clickable Chip"
  icon="star"
  iconPosition="right"
  backgroundColor="#f0f0f0"
  textColor="#333"
  onClick={(e) => console.log('Chip clicked')}
  additionalStyles={{ borderRadius: '8px' }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|string|No|-|-|
|label|string \| ReactNode|Yes|-|-|
|iconPosition|'left' \| 'right'|No|-|-|
|backgroundColor|string|No|-|-|
|textColor|string|No|-|-|
|onClick|(e: React.MouseEvent<HTMLDivElement>) => void|No|-|-|
|additionalStyles|React.CSSProperties|No|-|-|
|variant|[ChipVariant](../types/ChipVariant.md)|No|-|-|
|size|[ChipSize](../types/ChipSize.md)|No|-|-|

## Related Types

- [ChipProps](../types/ChipProps.md)
- [ChipVariant](../types/ChipVariant.md)
- [ChipSize](../types/ChipSize.md)

