# ResponsiveLayouts


Layout configuration for different responsive breakpoints


## Definition

```tsx
export interface ResponsiveLayouts {
    /**
     * Large breakpoint layout (1200px+)
     */
    lg?: Layout[];
    /**
     * Medium breakpoint layout (996px - 1199px)
     */
    md?: Layout[];
    /**
     * Small breakpoint layout (768px - 995px)
     */
    sm?: Layout[];
    /**
     * Extra small breakpoint layout (480px - 767px)
     */
    xs?: Layout[];
    /**
     * Extra extra small breakpoint layout (0px - 479px)
     */
    xxs?: Layout[];
    /**
     * Additional custom breakpoints
     */
    [breakpoint: string]: Layout[] | undefined;
}
```

## Usage

```tsx
import { ResponsiveLayouts } from 'uxp/components';
```

