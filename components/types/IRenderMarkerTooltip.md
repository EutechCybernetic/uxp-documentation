# IRenderMarkerTooltip




Render tooltip for marker




```tsx
interface IRenderMarkerTooltip {
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
import {IRenderMarkerTooltip} from 'uxp/components';
```

