# useRowGestures

Touch gestures for a list row: swipe left and long press. Same as `usePressGesture`; kept
under this name for code written before the shared touch rules.



## Installation

```tsx
import { useRowGestures } from 'uxp/components';
```

## Signature

```tsx
function useRowGestures(): void
```

## Examples

```tsx
tsx
const gestures = useRowGestures({ onSwipeLeft: openActions, onLongPress: startSelecting });
<div {...gestures.handlers} onClick={(e) => { if (gestures.consumeClick()) return; open(); }} />
```

