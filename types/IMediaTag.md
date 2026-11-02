# IMediaTag


A media library tag (`MediaItem:Tags`): the user's own, and tags shared with them.


## Definition

```tsx
export interface IMediaTag {
    Key: string
    Name: string
    Access?: string
    UserGroups?: string
    OwnerName?: string
    IsOwner?: string | number
    ItemCount?: string | number
}
```

## Usage

```tsx
import { IMediaTag } from 'uxp/components';
```

