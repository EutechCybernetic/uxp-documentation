# InputProps

## Definition

```tsx
interface InputProps extends InputSizeProps, InputStateProps {
    /**
     * Determines if the input field accepts a password, email address, number or just text. Default is 'text'
     */
    type?: InputType,

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
     * Custom content to render on the left side of the input (e.g., "S-" prefix, icons)
     */
    prefix?: React.ReactNode,

    /**
     * Custom content to render on the right side of the input (e.g., icons, buttons)
     */
    suffix?: React.ReactNode,

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
    style?: React.CSSProperties,
    /**
     * tab index. default is 0
     */
    tabIndex?: number
}
```

## Usage

```tsx
import { InputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [InputType](../types/InputType.md)

