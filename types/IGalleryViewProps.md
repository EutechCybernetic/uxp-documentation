# IGalleryViewProps


GalleryView component props


## Definition

```tsx
interface IGalleryViewProps {
    /**
     * Whether the view is currently visible. Searching only runs while shown.
     */
    show: boolean

    /**
     * Extra parameters merged into the image search request
     * (e.g. { orientation: 'landscape' })
     */
    searchParameters?: { [key: string]: any }

    /**
     * Called with the full-size image URL of the clicked result. The host
     * decides what a click means — preview in single mode, toggle in multiple
     * mode.
     */
    onPick: (url: string) => void

    /**
     * Multi-select support — return true to render the item as selected
     */
    isSelected?: (url: string) => boolean

    /**
     * Supplied only in multiple mode, where a click toggles instead of
     * previewing — renders the per-card expand button.
     */
    onPreview?: (url: string) => void

    /**
     * The value the host's preview column is currently showing.
     */
    activeValue?: string
}
```

## Usage

```tsx
import { IGalleryViewProps } from 'uxp/components';
```

