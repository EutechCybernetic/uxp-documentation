# UsePinboardResult


Result of {@link usePinboard} — the pin list plus load/pin/unpin/isPinned actions.


## Definition

```tsx
export interface UsePinboardResult {
    pins: PinnedObject[];
    loading: boolean;
    load: () => Promise<void>;
    pin: (obj: PinnedObject) => Promise<void>;
    unpin: (obj: PinnedObject) => Promise<void>;
    isPinned: (key: string) => boolean;
}
```

## Usage

```tsx
import { UsePinboardResult } from 'uxp/components';
```

## Related Types

- [PinnedObject](../types/PinnedObject.md)

