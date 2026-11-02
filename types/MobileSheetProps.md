# MobileSheetProps

Props for the MobileSheet component


## Definition

```tsx
export interface MobileSheetProps {
    /**
     * Shows the sheet. It slides up on open and down on close.
     * @example true
     */
    isOpen: boolean
    /** Called on a tap outside the sheet, Escape, the close button, or a drag down */
    onClose: () => void
    /**
     * `fit`: as tall as its content (scrolls when taller than the screen), round top corners,
     * a handle to drag it down, and the page above dimmed.
     * `full`: fills the space between the app header and footer, flat.
     * @default 'fit'
     */
    height?: 'fit' | 'full'
    /**
     * Opens inside its parent element instead of over the whole screen. The parent needs
     * `position: relative`. Use it for a sheet inside a panel, e.g. filters above a toolbar.
     * @default false
     */
    contained?: boolean
    /** Title in the sheet's header row */
    title?: React.ReactNode
    /**
     * Shows a close (X) button in the header row
     * @default false
     */
    showClose?: boolean
    /** Additional class name for the sheet */
    className?: string
    /**
     * Sheet content
     * @example Content
     * ```tsx
     * <div style={{ padding: '1rem' }}>Sheet content</div>
     * ```
     */
    children?: React.ReactNode
}
```

## Usage

```tsx
import { MobileSheetProps } from 'uxp/components';
```

