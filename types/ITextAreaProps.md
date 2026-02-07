# ITextAreaProps

## Definition

```tsx
interface ITextAreaProps {
    /**
    * The actual text 
    */
    value: string,
    /**
     * This function is called whenever the text changes. The new text value is passed as a parameter
     */
    onChange: (value: string) => void,
    /**
     * callback function on focus 
     */
    onFocus?: () => void,
    /**
     * callback function on blur
     */
    onBlur?: (vale: string) => void
    /**
     * callback function on key down
     */
    onKeyDown?: (e: React.KeyboardEvent<HTMLTextAreaElement>, val: string) => void

    /**
     * Any additional class names to be included for the input field
     */
    className?: string,
    /**
      * additional styles 
      */
    styles?: React.CSSProperties,
    /**
     * mark input as read only
     */
    readOnly?: boolean
    /**
     * tab index. default is 0
     */
    tabIndex?: number
    /**
     * number of rows
     */
    rows?: number,
    /**
     * number of cols
     */
    cols?: number,
    spacingMode?: SpacingMode
}
```

## Usage

```tsx
import { ITextAreaProps } from 'uxp/components';
```

## Related Types

- [SpacingMode](../types/SpacingMode.md)

