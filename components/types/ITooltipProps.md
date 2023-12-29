# ITooltipProps








```tsx
interface ITooltipProps {
    /**
     * The content to show inside the tooltip
     * This can be either a string or a JSX element
     * @example
     * 
     * ```
     * <Tooltip content="This is a tooltip" />
     * ```
     * 
     * @example
     * 
     * ```
     * <Tooltip content={() => <div>This is a tooltip</div>} />
     * ```
     */
    content: string | IContentFunction,

    /**
     * Where the tooltip should be placed relative to the element it is being displayed for
     * <Tooltip position="left" content="There are many like it but this one's mine" />
     */
    position?: ITooltipPosition

    /**
     * the content to show within the bubble
     *  This can be either a string or a JSX element
     * 
     * * @example
     * 
     * ```
     *  <Tooltip 
     *      content="This is a tooltip"
     *  >
     *      <button className="btn showcase" >Hover to Show Tooltip</button>
     *  </Tooltip>
     * ```
     * 
     * * @example
     * 
     * ```
     *  <Tooltip 
     *      content={() => <div>This is a tooltip</div>}
     *      position="left"
     *  >
     *      <button className="btn showcase" >Hover to Show Tooltip</button>
     *  </Tooltip>
     * ```
     * 
     */
}
```

## Usage



```tsx
import {ITooltipProps} from 'uxp/components';
```

