# IMediaThumbProps


MediaThumb component props


## Definition

```tsx
export interface IMediaThumbProps {
    /**
     * The value to render — a URL, an icon string, or an object URL for a file
     * that has not been uploaded yet.
     */
    value: string

    /**
     * Display name override. A `blob:` URL carries no file name, so callers
     * showing picked files pass the File's name here.
     */
    name?: string

    /**
     * Thumbnail to render instead of `value` — the gallery serves a small
     * image for the grid and the full-size one on select.
     */
    src?: string

    /**
     * Known media type. The library reports one per row, so passing it here
     * keeps the server's answer instead of re-inferring from the URL.
     */
    type?: MediaType

    /**
     * How a picture fills its box.
     * @default 'cover'
     */
    fit?: 'cover' | 'contain'
}
```

## Usage

```tsx
import { IMediaThumbProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

