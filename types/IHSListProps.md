# IHSListProps

## Definition

```tsx
interface IHSListProps {
    /**
     * Array of items 
     * @example
     * [
     *   { id: 1, name: 'Chiller 01', location: 'Level 1' },
     *   { id: 2, name: 'Chiller 02', location: 'Level 1' },
     *   { id: 3, name: 'AHU 01', location: 'Level 2' },
     *   { id: 4, name: 'AHU 02', location: 'Level 2' },
     *   { id: 5, name: 'Pump 01', location: 'Basement' },
     *   { id: 6, name: 'Boiler 01', location: 'Roof' },
     * ]
     */
    items: any[],
    /**
     * render method for an item given above
     * @example Item card
     * ```tsx
     * renderItem={(item, key) => <div key={key} style={{ width: 220 }}><ItemCard title={item.name} subTitle={item.location} name={item.name} /></div>}
     * ```
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

