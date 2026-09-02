# IMediaTileProps


MediaTile component props


## Definition

```tsx
export interface IMediaTileProps {
    /**
     * The value the tile stands for — a URL or an icon string.
     */
    value: string

    /**
     * Display name. Falls back to the value's own file name.
     */
    name?: string

    /**
     * Thumbnail to draw instead of `value` (the gallery's small image).
     */
    thumbSrc?: string

    /**
     * Known media type, so the library keeps its server-reported one.
     */
    type?: MediaType

    /**
     * Renders the check badge.
     */
    selected?: boolean

    /**
     * Renders the tile as the one the preview column is showing.
     */
    active?: boolean

    /**
     * Show the name under the thumbnail. Pictures fill the whole tile without
     * it; icons and non-image files need the caption.
     */
    showName?: boolean

    onClick?: () => void

    /**
     * Supplied only where a primary click means something other than preview
     * (multi-select) — renders the hover expand button.
     */
    onPreview?: () => void

    previewTitle?: string
}
```

## Usage

```tsx
import { IMediaTileProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

