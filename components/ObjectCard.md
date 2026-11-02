# ObjectCard


A card in two parts: a picture (or an icon) on top, and the title, description and chips
below. All cards in a grid have the same size; long text is cut off. Object search shows
its rows with it in card mode.



## Installation

```tsx
import { ObjectCard } from 'uxp/components';
```

## Signature

```tsx
const ObjectCard: React.FunctionComponent<ObjectCardProps>
```

## Examples

#### Picture

```tsx
tsx
<ObjectCard
    image="https://picsum.photos/400/300"
    title="Chiller 2"
    description="Plant room · Tower A"
    chips={['HVAC']}
    badge={{ label: 'Fault', variant: 'danger' }}
/>
```

#### Icon

```tsx
tsx
<ObjectCard icon="fal file-pdf" title="level-3-plan.pdf" description="Draft floor plan" />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|ReactNode|Yes|-|'Chiller 2'|
|description|ReactNode|No|-|'Plant room · Tower A'|
|image|string \| ReactNode|No|-|-|
|icon|string|No|-|-|
|chips|ReactNode[]|No|-|-|
|badge|[ObjectCardBadge](../types/ObjectCardBadge.md)|No|-|-|
|actions|ReactNode|No|-|-|
|active|boolean|No|-|-|
|selected|boolean|No|-|-|
|onSelect|(selected: boolean) => void|No|-|-|
|onClick|(e: React.MouseEvent<HTMLDivElement>) => void|No|-|-|
|layout|'vertical' \| 'horizontal'|No|-|-|
|className|string|No|-|-|

## Related Types

- [ObjectCardProps](../types/ObjectCardProps.md)
- [ObjectCardBadge](../types/ObjectCardBadge.md)
- [ChipVariant](../types/ChipVariant.md)

