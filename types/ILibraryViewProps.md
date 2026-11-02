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
     * Multiple mode: tick or untick an item from its checkbox (a click previews it)
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
     * Search text, when the host owns it (phones put the search in the bottom
     * toolbar). Without it the view keeps its own.
     */
    query?: string

    onQueryChange?: (query: string) => void

    /**
     * Type filter (`'all'` or a media type), when the host owns it.
     * Without it the view keeps its own.
     */
    typeFilter?: string

    onTypeFilterChange?: (type: string) => void

    /**
     * Hide the search box and the type chips: the host shows them elsewhere.
     */
    hideFilters?: boolean


    /**
     * Show the files as a grid of cards (nothing previewed yet). Without it they are compact
     * cards in one column, beside the preview.
     */
    grid?: boolean

    /**
     * Fired with the rows loaded so far, so the host can show a row's details.
     */
    onItemsChange?: (items: IMediaItem[]) => void

    /**
     * Phones: whether the folders and tags sheet is open, when the host owns it (its toolbar
     * opens it). Without it the view keeps its own.
     */
    treeOpen?: boolean

    onTreeOpenChange?: (open: boolean) => void

    /**
     * Fired with whether the library is showing a folder or tag other than the one it opens on,
     * so the host can mark its folders button
     */
    onFilteredChange?: (filtered: boolean) => void

    /**
     * Fired with whether the library has folders and tags (5.2 servers), so the host shows its
     * folders button only then
     */
    onTreeChange?: (hasTree: boolean) => void

    /**
     * Fired with the open folder's or tag's name
     */
    onSelectionLabelChange?: (label: string) => void
}
```

## Usage

```tsx
import { ILibraryViewProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)
- [IMediaItem](../types/IMediaItem.md)

