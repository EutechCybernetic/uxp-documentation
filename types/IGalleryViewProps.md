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
    onPick: (url: string, meta?: IGalleryPickMeta) => void

    /**
     * Multi-select support — return true to render the item as selected
     */
    isSelected?: (url: string) => boolean

    /**
     * Multiple mode: tick or untick a photo from its checkbox (a click previews it)
     */
    onToggle?: (url: string) => void

    /**
     * @deprecated A click previews now, in every mode; multiple mode ticks from the checkbox (`onToggle`)
     */
    onPreview?: (url: string) => void

    /**
     * The value the host's preview column is currently showing.
     */
    activeValue?: string

    /**
     * Show the files as a grid of cards (nothing previewed yet). Without it they are compact
     * cards in one column, beside the preview.
     */
    grid?: boolean

    /**
     * Search text, when the host owns it (phones put the search in the bottom toolbar).
     * Without it the view keeps its own.
     */
    query?: string

    onQueryChange?: (query: string) => void

    /**
     * Hide the search box: the host shows it elsewhere
     */
    hideSearch?: boolean
}
```

## Usage

```tsx
import { IGalleryViewProps } from 'uxp/components';
```

## Related Types

- [IGalleryPickMeta](../types/IGalleryPickMeta.md)

