# IDataTableProps

## Definition

```tsx
interface IDataTableProps {
    /**
     * List of items to render. This can either be an array of objects or a function that will generate the array of objects.
     * If you supply a function then pagination will be supported. The function expects 2 parameters - `max` and `last` and returns a promise that will resolve to the list of objects.
     * `max` specifies the maximum number of items to be returned.
     */
    data: Array<any> | IDataFunction,

    /**
     * List of columns to render
     * column contains three(3) params
     *  - title : column title. this can be either a string or a function that returns a jsx element
     *  - width : width of the column. this can a percentage (20%), fixed with (100px) or null
     *  - renderColumn : content of the column. this is a function that returns a jsx element. this function will take a single argument item type of any
     *  @example
     * 
     * ```
     *  renderColumn={(item,key)=><div>{'Item:' + JSON.stringify(item)}}</div>}
     * ```
     * @example
     * 
     * ```
     * columns= {[
     *  {
     *      title: "Request Id",
     *      width: "20%",
     *      render: (item) => <div>{item.requestId} </div>
     *  },
     *  {
     *      title: "User",
     *      width: "10%",
     *      render: (item) => <div>{item.user} </div>
     *  }
     * ]}
     * ```
     */
    columns: IDataTableColumn[],

    /**
     * The number of items to fetch in each page. This gets passed to the data function as the `max` parameter
     */
    pageSize: number,

    args?: any

    /**
     * This function renders a loading animation. If not specified, the default loading animation will be used.
     */
    renderLoading?: () => JSX.Element,

    /**
     * Any extra class names to be added to the component
     */
    className?: string
    /**
     * show/hide footer (scroll buttons)  
     */
    showFooter?: boolean,
    /**
     * mun of rows to scroll 
     */
    scrollStep?: number,
    /**
     * show/hide end of content message
     */
    showEndOfContent?: boolean

    /**
   * this function will be called every time list get updated 
   * this will return total number of items (function should return the total count) and loaded items count
   */
    onItemsLoad?: (total: number, loaded: number) => void

    /**
     * this will toggle the headers 
     * default is true
     */
    renderHeaders?: boolean,

    /**
     * callback function to trigger on click a table row 
     */
    onClickRow?: (item: any) => void,

    /**
     * active table row styles 
     * default is 'active' an has some styles
     * if you give a class here it will be applied 
     */
    activeClass?: string
}
```

## Usage

```tsx
import { IDataTableProps } from 'uxp/components';
```

## Related Types

- [IDataFunction](../types/IDataFunction.md)
- [IDataTableColumn](../types/IDataTableColumn.md)
- [ITitleFunc](../types/ITitleFunc.md)

