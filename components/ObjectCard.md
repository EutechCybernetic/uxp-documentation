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

## Live preview

[Open ObjectCard in the playground →](<https://story.uxp.iviva.com/?path=/docs/lists-objectcard--docs>)

### Variants

- [Picture](<https://story.uxp.iviva.com/?path=/docs/lists-objectcard--docs&args=title%3AChiller+2&props=%7B%22image%22%3A%22https%3A%2F%2Fpicsum.photos%2F400%2F300%22%2C%22description%22%3A%22Plant+room+%C2%B7+Tower+A%22%2C%22chips%22%3A%5B%22HVAC%22%5D%2C%22badge%22%3A%7B%22label%22%3A%22Fault%22%2C%22variant%22%3A%22danger%22%7D%7D>)
- [Icon](<https://story.uxp.iviva.com/?path=/docs/lists-objectcard--docs&args=icon%3Afal+file-pdf%3Bdescription%3ADraft+floor+plan&props=%7B%22title%22%3A%22level-3-plan.pdf%22%7D>)

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

