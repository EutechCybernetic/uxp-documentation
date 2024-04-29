# IAutoCompleteInputInstanceProps




Events/Callbacks to controll the behaviour of the component





```tsx
interface IAutoCompleteInputInstanceProps {
    /**
     * this will open the picker
     * 
     * @example 
     * ```
     * inputRef.current?.open()
     * ```
     */
    open: () => void
    /**
     * this will close the picker 
     * 
     * @example 
     * ```
     * inputRef.current?.close()
     * ```
     */
    close: () => void,
    /**
    * this will focus the input
    * 
    * @example 
    * ```
    * inputRef.current?.focus()
    * ```
    */
    focus: () => void,
    /**
     * This will return the input element 
     * @example 
     * ```
     * let input = inputRef.current?.getInputElement()
     * ```
     */
    getInputElement: () => React.MutableRefObject<HTMLInputElement>,
    /**
     * This will append the passed value at the cursor 
     * if a selection has made it will be replaced by the passed value
     */
    appendAtCursor: (value: string) => void
}
```

## Usage



```tsx
import {IAutoCompleteInputInstanceProps} from 'uxp/components';
```

## Examples



```tsx
// create a ref
let inputRef: React.MutableRefObject<IAutoCompleteInputInstanceProps> = React.useRef(null)

// add the ref to input
<AutoCompleteInput
 ...
 ref ={inputRef}
/>


// use
inputRef.current?.open()
inputRef.current?.close()
inputRef.current?.focus()
let input = inputRef.current?.getInputElement()
inputRef.current?.appendAtCursor('string to append')
```

