# IAutoCompleteInputInstanceProps


Imperative handle exposed via `ref` to control the component programmatically.



## Definition

```tsx
interface IAutoCompleteInputInstanceProps {
    /** Opens the suggestion dropdown */
    open: () => void
    /** Closes the suggestion dropdown */
    close: () => void
    /** Focuses the text input */
    focus: () => void
    /** Returns the underlying `<input>` element */
    getInputElement: () => HTMLInputElement | null
    /**
     * Appends `value` at the current cursor position.
     * If there is an active selection it is replaced by `value`.
     */
    appendAtCursor: (value: string) => void
}
```

## Usage

```tsx
import { IAutoCompleteInputInstanceProps } from 'uxp/components';
```

## Examples

```tsx
tsx
const inputRef = React.useRef<IAutoCompleteInputInstanceProps>(null)

<AutoCompleteInput value={val} onChange={setVal} autoFill={renderAutoFill} ref={inputRef} />

inputRef.current?.open()
inputRef.current?.close()
inputRef.current?.focus()
inputRef.current?.appendAtCursor(' appended text')
```

