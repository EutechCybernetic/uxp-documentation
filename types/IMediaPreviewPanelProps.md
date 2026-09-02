# IMediaPreviewPanelProps


MediaPreviewPanel component props


## Definition

```tsx
export interface IMediaPreviewPanelProps {
    /**
     * The value being previewed. Empty renders nothing at all — with nothing
     * selected the list owns the whole pane.
     */
    value: string

    /**
     * Heading for the preview. Falls back to the value's own file name.
     */
    name?: string

    /**
     * Source-specific controls, rendered under the large preview — the icon
     * source puts its variants grid here.
     */
    children?: React.ReactNode

    /**
     * Renders the check badge, as a grid tile does.
     */
    selected?: boolean

    /**
     * Supplied in multiple mode only — makes the preview media clickable to
     * toggle selection, so the largest instance of a value obeys the same
     * click-to-select rule as the tiles.
     */
    onToggle?: () => void

    onClose?: () => void

    closeTitle?: string
}
```

## Usage

```tsx
import { IMediaPreviewPanelProps } from 'uxp/components';
```

