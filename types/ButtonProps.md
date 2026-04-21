# ButtonProps

## Definition

```tsx
interface ButtonProps {
    /**
     * The caption for the button
     */
    title?: string,

    /**
     * Left side icon - supports FontAwesome, Phosphor, image URL, text/emoji, or React element
     */
    leftIcon?: ButtonIcon,

    /**
     * Right side icon - supports FontAwesome, Phosphor, image URL, text/emoji, or React element
     */
    rightIcon?: ButtonIcon,

    /**
     * Any extra css classes to add to the button 
     */
    className?: string,

    /**
     * The callback that gets invoked when the button is clicked
     * Supports both sync and async functions
     */
    onClick?: (e?: React.MouseEvent<HTMLButtonElement>) => void | Promise<void>,

    /**
     * a callback function to call on error
     */
    onError?: (e: React.MouseEvent<HTMLButtonElement>) => void

    /**
     * Set this to `true` to show the button in its 'loading...' state.
     */
    loading?: boolean,

    /**
     * The caption to show on the button when its in loading state
     */
    loadingTitle?: string,

    /**
     * to mark the button as active
     */
    active?: boolean,

    /**
     * to disable the button 
     */
    disabled?: boolean,

    /**
     * any custom inline styles to the button 
     */
    styles?: React.CSSProperties,

    /**
     * any custom inline styles for the icon container 
     */
    iconStyles?: React.CSSProperties | { leftIcon?: React.CSSProperties, rightIcon?: React.CSSProperties },

    /**
     * Button type
     */
    type?: ButtonComponentType

    /**
     * Button variation
     */
    variant?: ButtonComponentVarient,

    /**
     * Icon only mode
     */
    iconOnly?: boolean,

    /**
     * Size of the button. Defaults to 'medium'.
     */
    size?: ButtonComponentSize,


    /**
     * BELOW PROPS ARE DEPRECATED
     */

    /**
     * @deprecated Use leftIcon or rightIcon instead
     * Button icon. 
     * you can either use a url or fontawesome icon 
     * 
     * Here is a example for using fontawesome icons 
     * icon={'fas save'}
     */
    icon?: string,

    /**
     * @deprecated Use leftIcon or rightIcon instead
     * icon position
     */
    iconPosition?: 'left' | 'right',

    /**
     * @deprecated This behavior is now handled automatically by BaseButtonComponent
     * show loading spinners in place of icons (even if the icon is not there it will show the spinner on the left sides)  when the button is in loading state, 
     */
    useLoadingSpinner?: boolean,
}
```

## Usage

```tsx
import { ButtonProps } from 'uxp/components';
```

## Related Types

- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)

