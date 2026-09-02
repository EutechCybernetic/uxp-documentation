# deriveMediaType


Classify an upload from its MIME type. Everything that isn't image/video/audio
is a Document — including files the browser gave no MIME type for.


## Installation

```tsx
import { deriveMediaType } from 'uxp/components';
```

## Signature

```tsx
function deriveMediaType(mime: string): MediaType
```

## Related Types

- [MediaType](../types/MediaType.md)

