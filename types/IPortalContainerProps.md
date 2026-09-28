# IPortalContainerProps


Options that can be passed to a portal container component


## Definition

```tsx
interface IPortalContainerProps {
    /**
     * create a backdrop if true
     * @example true
     */
    hasBackdrop?: boolean,

    /**
     * callback function to click on backdrop
     */
    onClickBackdrop?: (e?: React.MouseEvent<HTMLDivElement>) => void,

    /**
     * additional styles to backdrop
     */
    backdropStyles?: any
    /**
     * disabled the scrolling of main content block if true
     * default value is true
     * DEPRECATED
     */
    disableScroll?: boolean,
    className?: string;
    /**
     * @example Box
     * ```tsx
     * <div style={{ padding: 24, background: 'var(--portalBGColor)' }}>Rendered in a portal above the page.</div>
     * ```
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { IPortalContainerProps } from 'uxp/components';
```

