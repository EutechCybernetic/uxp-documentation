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
    /** Folder it sits in (empty = top level). Folders, tags and access need the 5.2 server. */
    FolderKey?: string
    Description?: string
    /** Who can see it: inherit (same as its folder) | private | all | groups */
    Access?: string
    /** CSV of UserGroupKeys, when Access is groups */
    UserGroups?: string
    /** Access after following its folders */
    EffectiveAccess?: string
    /** CSV of tag names */
    Tags?: string
    OwnerName?: string
    /** '1' when the signed-in user owns it (others only view and use it) */
    IsOwner?: string | number
}
```

## Usage

```tsx
import { IMediaItem } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

