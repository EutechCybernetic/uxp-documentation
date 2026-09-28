# IDynamicSelectProps

## Definition

```tsx
interface IDynamicSelectProps {
    /**
     * List of options to render. 
     * This a function that will generate the array of objects.
     * pagination will be supported. 
     * The function expects 2 parameters - max and last and returns a promise that will resolve to the list of objects. max specifies the maximum number of items to be returned.
     * @example Paged list
     * ```tsx
     * options={async (max, lastPageToken) => {
     *     const all = ['Chiller 01', 'Chiller 02', 'AHU 01', 'AHU 02', 'Pump 01', 'Boiler 01'].map((name) => ({ name }));
     *     const start = Number(lastPageToken || 0);
     *     return { items: all.slice(start, start + max), pageToken: String(start + max) };
     * }}
     * ```
     */
    options: IDynamicSelectDataFunction,
    /**
     * selected option label
     * @example "Chiller 01"
     */
    selected: string,
    /**
     * Callback that gets executed whenever a option is selected/changed
     */
    onChange: (value: any) => void,
    /**
     * placeholder text
     */
    placeholder?: string,
    /**
     * Any extra css classes to add to the button 
     */
    className?: string,
    /**
     * set to valid state if true 
     */
    isValid?: boolean,
    /**
     * page size for pagination
     */
    pageSize?: number,
    /**
     * A function that will be responsible for rendering each individual option of the list.
     * 
     * @example
     * 
     * ```
     * renderOption={(option,key)=><div>{option.label}</div>}
     * ```
     * 
     * @example
     * ```
     * renderOption={(option,key)=><ItemCard title={option.label} />}
     * ```
     */
    renderOption?: (item: any, key: number) => JSX.Element,
    /**
     * name of the field to display
     * @example "name"
     */
    labelField: string,
    /**
     * Name if the field to use as icon 
     * if a value is passed icon will be displayed. 
     */
    iconField?: string
    /**
     * number of milliseconds to delay send the request on change query
     * default is 500
     *
     */
    timeout?: number,
    type?: "search-box" | "select-box",
    /**
     * show hide end of content message
     */
    showEndOfContent?: boolean
}
```

## Usage

```tsx
import { IDynamicSelectProps } from 'uxp/components';
```

## Related Types

- [IDynamicSelectDataFunction](../types/IDynamicSelectDataFunction.md)

