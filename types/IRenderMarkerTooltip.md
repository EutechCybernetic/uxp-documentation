# IRenderMarkerTooltip


Render tooltip for marker


## Definition

```tsx
export interface IRenderMarkerTooltip {
    /**
     * content to show in tooltip
     */
    content: () => JSX.Element,
    /**
     * direction
     * default is auto
     */
    direction?: 'top' | 'bottom' | 'left' | 'right' | 'center' | 'auto',
    /**
     * keep showing the tooltip
     * default is false
     */
    keepShowing?: boolean
}
```

## Usage

```tsx
import { IRenderMarkerTooltip } from 'uxp/components';
```

## Examples

```tsx
tsx
renderTooltip={{
  content: () => <div>Tooltip text</div>,
  direction: 'top',
  keepShowing: true
}}
```

