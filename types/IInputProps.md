# IInputProps

## Definition

```tsx
interface IInputProps {
    /**
     * Determines if the input field accepts a password, email address, number or just text. Default is 'text'
     */
    type?: IInputType,

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
    onKeyDown?: (e: React.KeyboardEvent<HTMLInputElement>, val: string) => void

    /**
     * Any additional class names to be included for the input field
     */
    className?: string,

    /**
     * Determines if an indicator should be shown at the end of the input.
     */
    hasIndicator?: boolean,

    /**
     * The color of the indicator icon (relevant only if hasIndicator is true)
     */
    indicatorColor?: string,
    /**
     * pass a boolean to indicate if the input is valid or not
     */
    isValid?: boolean,
    /**
     * additional attributes that can be passed to a <input> tag
     */
    inputAttr?: { [key: string]: string | boolean }
    /**
     * placeholder value 
     */
    placeholder?: string,
    /**
     * render inline 
     */
    inline?: boolean,
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
    tabIndex?: number,

    spacingMode?: SpacingMode
}
```

## Usage

```tsx
import { IInputProps } from 'uxp/components';
```

## Related Types

- [IInputType](../types/IInputType.md)
- [SpacingMode](../types/SpacingMode.md)

