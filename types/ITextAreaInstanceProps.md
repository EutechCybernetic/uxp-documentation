# ITextAreaInstanceProps




Events/Callbacks to controll the behaviour of the component





```tsx
interface ITextAreaInstanceProps {
    /**
     * focus the input 
     * @example 
     * ```
     * inputRef.current?.focus()
     * ```
     */
    focus: () => void,
    /**
     * this will return the <TextArea /> element
     * @example 
     * ```
     * let input = inputRef.current?.getElement()
     * ```
     */
    getElement: () => React.MutableRefObject<HTMLTextAreaElement>
}
```

## Usage



```tsx
import {ITextAreaInstanceProps} from 'uxp/components';
```

## Examples



```tsx
// create a ref
let inputRef: React.MutableRefObject<ITeaxtareaInstanceProps> = React.useRef(null)

// add the ref to input
<TextArea
 ...
 ref ={inputRef}
/>


// use
inputRef.current?.focus()
let element = inputRef.current?.getElement()
```

