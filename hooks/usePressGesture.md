# usePressGesture

Touch gestures for an item: swipe left (its actions) and press and hold. The numbers are the
shared touch rules (`touchRules`). Vertical scrolling is left alone. The item slides a little
with the finger while swiping. After a swipe or a long press the next click is swallowed, so
the gesture does not also open the item.

Holding an icon-only control inside the item shows the control's label instead of the
item's long press.



## Installation

```tsx
import { usePressGesture } from 'uxp/components';
```

## Signature

```tsx
function usePressGesture({ onSwipeLeft, onLongPress }: RowGestureOptions): RowGestures
```

## Examples

```tsx
tsx
const gestures = usePressGesture({ onSwipeLeft: openActions, onLongPress: startSelecting });
<div {...gestures.handlers} onClick={(e) => { if (gestures.consumeClick()) return; open(); }} />
```

## Related Types

- [RowGestureOptions](../types/RowGestureOptions.md)
- [RowGestures](../types/RowGestures.md)

