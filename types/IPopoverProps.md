# IPopoverProps








```tsx
interface IPopoverProps {
    /**
     * title of the popup bubble
     *  This can be either a string or a JSX element
     * @example
     * 
     * ```
     * title="Popover Title"
     * ```
     * 
     * * @example
     * 
     * ```
     * title={() => <div>Popover Title</div>
     * ```
     */
    title: string | IContentFunction,

    /**
     * the content to show within the bubble
     *  This can be either a string or a JSX element
     * 
     * * @example
     * 
     * ```
     * content="Popover Content"
     * ```
     * 
     * * @example
     * 
     * ```
     * content={() => <div>Popover content</div>
     * ```
     * 
     */
    content: string | IContentFunction,

    /**
     * Where the bubble should be positioned relative to the element 
     */
    position?: IPopoverPosition

    /**
     * the content to show within the bubble
     *  This can be either a string or a JSX element
     * 
     * * @example
     * 
     * ```
     *  <Popover 
     *      title="Popover" 
     *      content="This is a popover"
     *  >
     *      <button className="btn showcase" >Click to Show popover</button>
     *  </Popover>
     *                 
     * ```
     * 
     * * @example
     * 
     * ```
     *  <Popover 
     *      title={() => <div>Popover</div>} 
     *      content={() => <div>This is a popover</div>}
     *      position="left"
     *  >
     *      <button className="btn showcase" >Click to Show popover</button>
     *  </Popover>
     * ```
     * 
     */
}
```

## Usage



```tsx
import {IPopoverProps} from 'uxp/components';
```

