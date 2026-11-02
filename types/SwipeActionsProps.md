# SwipeActionsProps


Props for the SwipeActions component


## Definition

```tsx
export interface SwipeActionsProps {
    /** The item's actions: buttons, each with an icon and a label (`title` or `tooltip`) */
    actions: React.ReactNode
    /** The item's name: the title of the actions sheet on touch screens */
    title?: React.ReactNode
    /** The item itself */
    children: React.ReactNode
    className?: string
}
```

## Usage

```tsx
import { SwipeActionsProps } from 'uxp/components';
```

