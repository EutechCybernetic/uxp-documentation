# useRemToPx

Returns a function that converts rem to px. The component re-renders when the base font
size changes (window resize), so chart fonts, canvas sizes and stroke widths follow the
screen size like the rest of the UI.



## Installation

```tsx
import { useRemToPx } from 'uxp/components';
```

## Signature

```tsx
function useRemToPx(): ((rem: number) => number)
```

## Examples

```tsx
const toPx = useRemToPx();
<XAxis tick={{ fontSize: toPx(0.9) }} />
```

