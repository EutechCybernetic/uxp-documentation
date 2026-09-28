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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-chip--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Chip live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-chip--default&amp;viewMode=story&amp;args=label%3AFilter%3Bicon%3Afilter"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Chip: Example 1"
></iframe>

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-chip--default&amp;viewMode=story&amp;args=label%3AClickable+Chip%3Bicon%3Astar%3BiconPosition%3Aright&amp;props=%7B%22backgroundColor%22%3A%22%23f0f0f0%22%2C%22textColor%22%3A%22%23333%22%2C%22additionalStyles%22%3A%7B%22borderRadius%22%3A%228px%22%7D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Chip: Example 2"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|string|No|-|"fas circle-check"|
|label|string \| ReactNode|No|-|"Running"|
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

