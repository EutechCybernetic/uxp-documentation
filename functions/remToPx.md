# remToPx

Converts a rem value to px using the current base font size.
Reads the size on each call; inside components prefer `useRemToPx()` so the value updates on resize.



## Installation

```tsx
import { remToPx } from 'uxp/components';
```

## Signature

```tsx
function remToPx(rem: number): number
```

## Examples

```tsx
const tickFontSize = remToPx(0.9); // 11.7 at 1440 wide, 31.2 at 3840 wide
```

