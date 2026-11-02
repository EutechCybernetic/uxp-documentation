# ListItemCardProps

Props for the ListItemCard component


## Definition

```tsx
export interface ListItemCardProps {
    /**
     * Main line (e.g. a name)
     * @example 'Asha Fernando'
     */
    title: ReactNode
    /**
     * Second line (e.g. an email)
     * @example 'asha@company.com'
     */
    subtitle?: ReactNode
    /**
     * Third line, in the accent colour (e.g. a group or a type)
     * @example 'Facility Managers'
     */
    meta?: ReactNode
    /** Picture url. With no picture, `name` shows as initials. */
    image?: string
    /** Name for the initials picture. With neither `image` nor `name` there is no picture. */
    name?: string
    /** Shown under the picture, on the right (e.g. a status chip) */
    status?: ReactNode
    /**
     * Label / value lines under the title (label on the left, value on the right). Phone tables
     * and lists build their cards from their columns this way.
     */
    lines?: { label: ReactNode, value: ReactNode }[]
    /** Additional class name */
    className?: string
}
```

## Usage

```tsx
import { ListItemCardProps } from 'uxp/components';
```

