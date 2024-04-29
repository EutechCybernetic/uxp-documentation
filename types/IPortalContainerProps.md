# IPortalContainerProps




Options that can be passed to a portal container component




```tsx
interface IPortalContainerProps {
    /**
     * create a backdrop if true
     */
    hasBackdrop?: boolean,

    /**
     * callback function to click on backdrop
     */
    onClickBackdrop?: () => void,

    /**
     * additional styles to backdrop
     */
    backdropStyles?: any
    /**
     * disabled the scrolling of main content block if true
     * default value is true
     */
    disableScroll?: boolean,
    className?: string
}
```

## Usage



```tsx
import {IPortalContainerProps} from 'uxp/components';
```

