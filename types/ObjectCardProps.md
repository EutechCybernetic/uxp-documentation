# ObjectCardProps

Props for the ObjectCard component


## Definition

```tsx
export interface ObjectCardProps {
    /**
     * Main line (one line, cut off when long)
     * @example 'Chiller 2'
     */
    title: ReactNode
    /**
     * Second line (one line)
     * @example 'Plant room · Tower A'
     */
    description?: ReactNode
    /** Picture url, or your own content for the top part */
    image?: string | ReactNode
    /** Icon for the top part when there is no picture (e.g. 'fal file-pdf') */
    icon?: string
    /** Small chips under the description (e.g. tags) */
    chips?: ReactNode[]
    /** A chip on the picture, top right */
    badge?: ObjectCardBadge
    /** Content at the end of the title line (e.g. a ⋯ menu or an icon) */
    actions?: ReactNode
    /** Shown as open (its details are showing) */
    active?: boolean
    /** Shown as selected; with `onSelect` a checkbox shows */
    selected?: boolean
    /** Called when the checkbox is toggled. Without it there is no checkbox. */
    onSelect?: (selected: boolean) => void
    /** Called when the card is clicked */
    onClick?: (e: React.MouseEvent<HTMLDivElement>) => void
    /** 'vertical' (picture on top, default) or 'horizontal' (compact: small picture on the left, text on the right) */
    layout?: 'vertical' | 'horizontal'
    /** Additional class name */
    className?: string
}
```

## Usage

```tsx
import { ObjectCardProps } from 'uxp/components';
```

## Related Types

- [ObjectCardBadge](../types/ObjectCardBadge.md)
- [ChipVariant](../types/ChipVariant.md)

