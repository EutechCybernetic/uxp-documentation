# IDataListProps

## Definition

```tsx
interface IDataListProps {
    /**
     * List of items to render. This can either be an array of objects or a function that will generate the array of objects.
     * If you supply a function then pagination will be supported. The function expects 2 parameters - `max` and `last` and returns a promise that will resolve to the list of objects.
     * `max` specifies the maximum number of items to be returned.
     */
    data: Array<any> | IDataFunction,

    /**
     * A function that will be responsible for rendering each individual element of the list.
     * It is common to return  `ItemCard` component from here.
     * 
     * @example
     * 
     * ```
     * renderItem={(item,key)=><div>{'Item:' + JSON.stringify(item)}}</div>}
     * ```
     * 
     * @example
     * ```
     * renderItem={(item,key)=><ItemCard data={item} titleField='Name' />}
     * ```
     */
    renderItem: (item: any, key: number) => JSX.Element,

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
    showEndOfContent?: boolean,

    /**
     * this function will be called every time list get updated 
     * this will return total number of items (function should return the total count) and loaded items count
     */
    onItemsLoad?: (total: number, loaded: number, items?: any[]) => void

    renderNoItems?: () => JSX.Element

}
```

## Usage

```tsx
import { IDataListProps } from 'uxp/components';
```

## Related Types

- [IDataFunction](../types/IDataFunction.md)

