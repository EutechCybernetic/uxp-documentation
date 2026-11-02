# MobileToolbarProps

Props for the MobileToolbar component


## Definition

```tsx
export interface MobileToolbarProps {
    /**
     * Items the slider steps through. Leave empty for a toolbar with buttons only.
     * @example
     * ```tsx
     * [{ id: 'open', label: 'Open', count: 4 }, { id: 'closed', label: 'Closed' }]
     * ```
     */
    items?: MobileToolbarItem[]
    /**
     * Id of the current item
     * @example 'open'
     */
    selected?: string
    /** Called with the new item's id from prev / next or the pick list */
    onSelect?: (id: string) => void
    /** Title of the pick list that opens when the label is tapped */
    pickerTitle?: string
    /**
     * Shows a search box at the top of the pick list (for long lists). The keyboard opens only
     * when the box is tapped.
     * @default false
     */
    pickerSearch?: boolean
    /**
     * Opens the pick list inside the toolbar's parent instead of over the screen.
     * The parent needs `position: relative`. Use it when the toolbar sits inside a panel.
     * @default false
     */
    pickerContained?: boolean
    /**
     * Icon buttons on the right
     * @example
     * ```tsx
     * [{ id: 'refresh', icon: 'phr arrow-clockwise', label: 'Refresh', onClick: () => {} }]
     * ```
     */
    actions?: MobileToolbarAction[]
    /**
     * Adds a search button. Tapping it turns the toolbar into a search box with a close (X) button.
     * `onChange` gets the text 300ms after typing stops. The box's own X clears the text; closing
     * keeps the search applied (the search button shows a dot while it is).
     */
    search?: {
        value: string
        onChange: (value: string) => void
        placeholder?: string
    }
    /** Content on the left when there is no slider (e.g. paging) */
    leading?: React.ReactNode
    /**
     * The slim row of a list's paging. Default: on when there is `leading` content and no slider.
     * Pass false to keep the full toolbar height (e.g. leading buttons instead of paging).
     */
    slim?: boolean
    /** Content after the action buttons (e.g. labelled buttons) */
    trailing?: React.ReactNode
    /**
     * Part of another bar (e.g. a configuration section's bottom bar): no frame or padding of
     * its own, it takes the room the bar leaves
     * @default false
     */
    embedded?: boolean
    /** Additional class name */
    className?: string
}
```

## Usage

```tsx
import { MobileToolbarProps } from 'uxp/components';
```

## Related Types

- [MobileToolbarItem](../types/MobileToolbarItem.md)
- [MobileToolbarAction](../types/MobileToolbarAction.md)

