# IMediaItem


A row of the per-user media library (`System / MediaItem`).


## Definition

```tsx
export interface IMediaItem {
    Key: string
    Name: string
    /** relative content-store path, e.g. 'media-library/file-<uuid>.png' */
    Path: string
    MediaType: MediaType
    MimeType: string
    Size: number
    CreatedDateTime: string
    /** total matching rows — a window function on the paged query, on every row */
    TotalCount?: number
}
```

## Usage

```tsx
import { IMediaItem } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

