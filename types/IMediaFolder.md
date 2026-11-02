# IMediaFolder


A media library folder (`MediaItem:Folders`): the user's own, and folders shared with them
(ParentKey empty when its parent isn't shared too).


## Definition

```tsx
export interface IMediaFolder {
    Key: string
    Name: string
    ParentKey?: string
    Access?: string
    UserGroups?: string
    EffectiveAccess?: string
    OwnerName?: string
    IsOwner?: string | number
    ItemCount?: string | number
    /** 'private': the user's Private folder (can't be shared, renamed or deleted) */
    Kind?: string
    /** '1': where the user's uploads go */
    IsDefault?: string | number
    /** Level from the top (a top folder is 1) */
    Depth?: string | number
}
```

## Usage

```tsx
import { IMediaFolder } from 'uxp/components';
```

