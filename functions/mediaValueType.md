# mediaValueType


Classify a picker value for display. Icon strings are `Icon`; URLs are typed
from their extension.

Extension-based rather than MIME-based on purpose: a bare value carries no
MIME type, and `isImageUrl` (icons/utils) treats *every* http URL as an image.
A URL with no usable extension — gallery and hand-typed CDN links routinely
have none — is assumed to be an Image, since that is overwhelmingly what they
are; renderers fall back to a file icon if it turns out not to load.


## Installation

```tsx
import { mediaValueType } from 'uxp/components';
```

## Signature

```tsx
function mediaValueType(value: string): MediaType
```

## Related Types

- [MediaType](../types/MediaType.md)

