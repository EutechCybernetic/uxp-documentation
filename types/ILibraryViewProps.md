# ILibraryViewProps


LibraryView component props


## Definition

```tsx
interface ILibraryViewProps {
    /**
     * Whether the view is currently visible. Becoming visible refetches the
     * first page so the grid always opens on current data.
     */
    show: boolean

    /**
     * Media types to list. `Icon` is queried as `Image` — the library never
     * holds Icon rows.
     */
    mediaTypes: MediaType[]

    /**
     * Called with the URL of the clicked item. The host decides what a click
     * means — preview in single mode, toggle in multiple mode.
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
import { ILibraryViewProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

