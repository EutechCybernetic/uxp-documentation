# runMediaCheck


Run a field's check on a value. Images are loaded first for their pixels and DPI.
Resolves the message, or undefined when the value is fine (or no check is set).


## Installation

```tsx
import { runMediaCheck } from 'uxp/components';
```

## Signature

```tsx
function runMediaCheck(validate: MediaCheck | undefined, info: IMediaCheckInfo): Promise<string | undefined>
```

## Related Types

- [IMediaCheckInfo](../types/IMediaCheckInfo.md)

