# MobileToolbarItem

An item the toolbar slider steps through (a category, a section, a tab)


## Definition

```tsx
export interface MobileToolbarItem {
    id: string
    label: string
    /** Shown as a chip next to the label (99+ above 99) */
    count?: number
    /** Icon in the pick list, e.g. 'phr bell' */
    icon?: string
    /** Heading the item is listed under in the pick list */
    group?: string
    /** Marks the item as needing attention: a dot on the slider */
    attention?: boolean
    /** More words the pick-list search matches (the label always matches) */
    keywords?: string[]
    /**
     * Buttons for the item (e.g. rename, delete). Swiping its row in the pick list to the left
     * opens them in a sheet, one row each.
     */
    actions?: React.ReactNode
}
```

## Usage

```tsx
import { MobileToolbarItem } from 'uxp/components';
```

