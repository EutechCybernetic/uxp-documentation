# calculateDropPosition

Calculate drop position based on mouse cursor position relative to node-head
Uses real mouse Y coordinate for accurate, scroll-aware positioning

Node-head is always at top of container (children are in node-body below)

For reordering (same parent):
- Top 50%: 'before' (insert as sibling above)
- Bottom 50%: 'after' (insert as sibling below)

For hierarchy changes (different parent):
- Top 30%: 'before' (insert as sibling above)
- Middle 30-60%: 'child' (add as last child)
- Bottom 40%: 'after' (insert as sibling below)




## Installation

```tsx
import { calculateDropPosition } from 'uxp/components';
```

## Signature

```tsx
function calculateDropPosition(mouseY: number, targetRect: { top: number; left: number; bottom: number; right: number; width: number; height: number }, isReordering?: boolean): DropPosition | null
```

