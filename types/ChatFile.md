# ChatFile


A file attached to a chat message.


## Definition

```tsx
export interface ChatFile {
    /** The file's id in the caller's store */
    id?: string
    /** File name */
    name: string
    /** Size in bytes */
    size?: number
    /**
     * Link to open or download it. Without it the chip is not a link.
     * A picture or a video with a link shows as a thumbnail that opens the viewer.
     */
    url?: string
    /** MIME type, e.g. 'image/png'. Picks the icon, and tells pictures and videos apart. */
    type?: string
    /** A still picture for the thumbnail, e.g. a video's poster. Pictures use `url` when it is left out. */
    thumbnailUrl?: string
}
```

## Usage

```tsx
import { ChatFile } from 'uxp/components';
```

