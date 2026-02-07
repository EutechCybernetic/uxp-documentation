# IPortalContainerProps


Options that can be passed to a portal container component


## Definition

```tsx
interface IPortalContainerProps {
    /**
     * create a backdrop if true
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
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { IPortalContainerProps } from 'uxp/components';
```

