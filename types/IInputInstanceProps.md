# IInputInstanceProps




Events/Callbacks to controll the behaviour of the component





```tsx
interface IInputInstanceProps {
    /**
     * focus the input 
     * @example 
     * ```
     * inputRef.current?.focus()
     * ```
     */
    focus: () => void,
    /**
     * this will return the <Input /> element
     * @example 
     * ```
     * let input = inputRef.current?.getElement()
     * ```
     */
    getElement: () => React.MutableRefObject<HTMLInputElement>
}
```

## Usage



```tsx
import {IInputInstanceProps} from 'uxp/components';
```

## Examples



```tsx
// create a ref
let inputRef: React.MutableRefObject<IInputInstanceProps> = React.useRef(null)

// add the ref to input
<Input
 ...
 ref ={inputRef}
/>


// use
inputRef.current?.focus()
let element = inputRef.current?.getElement()
```

