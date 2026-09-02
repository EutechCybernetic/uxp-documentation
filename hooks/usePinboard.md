# usePinboard


Hook wrapping the v4 Pinboard endpoints, filtered to a single object type.
Backed by `context.executeAPISafe` (APIKEY-authed raw call to `${lucyUrl}/{url}`).


## Installation

```tsx
import { usePinboard } from 'uxp/components';
```

## Signature

```tsx
function usePinboard(objectType: string): UsePinboardResult
```

## Related Types

- [UsePinboardResult](../types/UsePinboardResult.md)
- [PinnedObject](../types/PinnedObject.md)

