# calculateWidgetPixelSize


Convert a widget's grid layout (w/h in grid units) to pixels, using the same
square-cell math as the dashboard grid (calculateRowHeight + margins between
cells). The cell is computed from the matched breakpoint's REFERENCE width,
not the passed width — so the result is stable while inner chrome (sidebars,
panels) resizes the container, and only changes when the viewport crosses a
breakpoint. Used by standalone widget surfaces (shareable page, designer
canvas, drilldown overlay); callers should pass the viewport width.


## Installation

```tsx
import { calculateWidgetPixelSize } from 'uxp/components';
```

## Signature

```tsx
function calculateWidgetPixelSize(containerWidth: number, layout: { w?: number, h?: number } | null | undefined, margin?: [number, number], breakpoints?: Record<string, BreakPoint>): { width: number, height: number, cellSize: number, breakpoint: string }
```

