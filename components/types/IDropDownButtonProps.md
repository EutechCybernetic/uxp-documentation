# IDropDownButtonProps




Dropdown button props




```tsx
interface IDropDownButtonProps {
    /**
     * The content to show inside the Dropdown
     * @example
     * 
     * ```
     * content={() => <div>Dropdown Content</div>}
     * ```
     */
    content: () => JSX.Element,

    /**
     * Where the dropdown should be placed relative to the element it is being displayed for
     * default is right
     */
    position?: IDropDownButtonPosition,
    /**
     * If this is true dropdown will show on mouse over & hide n mouse out
     * If this is false dropdown ill show on click
     */
    showOnHover?: boolean

    className?: string

    /**
     * Dropdown button basic example
     * 
     * @example
     * 
     * ```
     *  <DropDownButton
     *      content={() => <div>This is dropdown content</div>}
     *  >
     *      <button className="btn showcase" >Click to Show the dropdown</button>
     *  </DropDownButton>
     * ```
     * 
     * Dropdown button example with options
     * @example
     * 
     * ```
     *  <DropDownButton
     *      content={() => <div>This is dropdown content</div>}
     *      position="left"
     *      showOnHover
     *  >
     *      <button className="btn showcase" >Click to Show the dropdown</button>
     *  </DropDownButton>
     * ```
     */


}
```

## Usage



```tsx
import {IDropDownButtonProps} from 'uxp/components';
```

