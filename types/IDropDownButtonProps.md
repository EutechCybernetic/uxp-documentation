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

    className?: string,

    /**
     * callback function when the popup is open
     */
    onOpen?: () => void
    /**
     * callback function when the popup is closed
     */
    onClose?: () => void
    /**
     * an option to force close a popup
     */
    forceClose?: boolean

}
```

## Usage



```tsx
import {IDropDownButtonProps} from 'uxp/components';
```

