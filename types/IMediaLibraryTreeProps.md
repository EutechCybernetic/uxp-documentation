# IMediaLibraryTreeProps


MediaLibraryTree component props


## Definition

```tsx
export interface IMediaLibraryTreeProps {
    /** Folders or tags */
    mode: 'folders' | 'tags'
    onModeChange: (mode: 'folders' | 'tags') => void
    folders: IMediaFolder[]
    tags: IMediaTag[]
    selection: MediaLibrarySelection
    onSelect: (selection: MediaLibrarySelection) => void
    loading?: boolean
    /** Add a folder (parent empty = top level). Without it the tree has no add buttons. */
    onAddFolder?: (parentKey: string | null) => void
    onEditFolder?: (folder: IMediaFolder) => void
    onDeleteFolder?: (folder: IMediaFolder) => void
    /** Make a folder the one uploads go to */
    onSetDefaultFolder?: (folder: IMediaFolder) => void
    onEditTag?: (tag: IMediaTag) => void
    onDeleteTag?: (tag: IMediaTag) => void
}
```

## Usage

```tsx
import { IMediaLibraryTreeProps } from 'uxp/components';
```

## Related Types

- [IMediaFolder](../types/IMediaFolder.md)
- [IMediaTag](../types/IMediaTag.md)
- [MediaLibrarySelection](../types/MediaLibrarySelection.md)

