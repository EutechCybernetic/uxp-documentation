# PinnedObject


A single pinned object as stored on the v4 per-user Pinboard
(server session + Redis `{UserKey}:__pinboard__`).


## Definition

```tsx
export interface PinnedObject {
    ObjectType: string;
    ObjectKey: string;
    ObjectID: string;
}
```

## Usage

```tsx
import { PinnedObject } from 'uxp/components';
```

