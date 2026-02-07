# IHSListProps

## Definition

```tsx
interface IHSListProps {
    /**
     * Array of items 
     */
    items: any[],
    /**
     * render method for an item given above
     */
    renderItem: (item: any, key: number) => JSX.Element
    /**
     * number of items to scroll when click on controller buttons
     */
    scrollStep?: number
    /**
     * additional css class names
     */
    className?: string,
    infinite?: boolean,
    autoScroll?: {
        enable: boolean,
        interval?: number // default 5000 (equals to 5s/5000ms)
    }
}
```

## Usage

```tsx
import { IHSListProps } from 'uxp/components';
```

