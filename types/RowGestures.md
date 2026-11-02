# RowGestures




## Definition

```tsx
export interface RowGestures {
    /** Touch handlers to spread on the row element */
    handlers: {
        onTouchStart?: (e: React.TouchEvent<HTMLElement>) => void
        onTouchMove?: (e: React.TouchEvent<HTMLElement>) => void
        onTouchEnd?: (e: React.TouchEvent<HTMLElement>) => void
        onTouchCancel?: (e: React.TouchEvent<HTMLElement>) => void
        onContextMenu?: (e: React.MouseEvent<HTMLElement>) => void
    }
    /** True once after a swipe or long press: the click that follows should be ignored */
    consumeClick: () => boolean
}
```

## Usage

```tsx
import { RowGestures } from 'uxp/components';
```

