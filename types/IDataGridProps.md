# IDataGridProps

## Definition

```tsx
interface IDataGridProps {
    /**
     * The items to render into a grid. This will be an array of any data.
     * The data is passed into the render function and can be used there to render the actual grid cell.
     * 
     */
    data: Array<any>,

    /**
     * A function which can be used to return the contents of each cell. The function will be passed 2 parameters:
     * 
     * `item`: The individual item from the list of items passed as the `data` prop
     * `key`: The index of the item in the list
     * 
     * This function should return a react element
     * 
     * @example
     * 
     * ```
     * renderItem={(item:any,key:number)=> <div>{'Key Is ' + key}}</div>}
     * ```
     */
    renderItem: (item: any, key: number) => JSX.Element,

    /**
     * The number of columns to display. Items will be layed out row by row and the number of columns in each row is specified here
     */
    columns: number,

    /**
     * How cells are outlined. `cells` (default) draws a border around every cell,
     * `dividers` draws only a vertical divider between columns, `none` draws nothing.
     */
    borders?: 'cells' | 'dividers' | 'none'

    /**
     * Any additional css class names to include in the component
     */
    className?: string
}
```

## Usage

```tsx
import { IDataGridProps } from 'uxp/components';
```

