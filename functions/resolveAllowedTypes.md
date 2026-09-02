# resolveAllowedTypes


The upload restriction implied by a set of media types. `Document` accepts
anything, so it clears the restriction entirely.


## Installation

```tsx
import { resolveAllowedTypes } from 'uxp/components';
```

## Signature

```tsx
function resolveAllowedTypes(mediaTypes: MediaType[]): string[] | undefined
```

