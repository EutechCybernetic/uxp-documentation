# MediaCheck


A field's check: a message when the value can't be used, else undefined.
Line 1 of the message is the problem, line 2 (after a newline) a hint.


## Definition

```tsx
export type MediaCheck = (info: IMediaCheckInfo) => string | undefined
```

## Usage

```tsx
import { MediaCheck } from 'uxp/components';
```

