# AsyncButtonProps

## Definition

```tsx
interface AsyncButtonProps {
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
     * The callback that gets invoked when the button is clicked.
     * It must return a Promise
     */
    onClick: () => Promise<any>,

    /**
     * Set button to active state when true
     */
    active?: boolean,

    /**
     * Set button to disabled state when true
     */
    disabled?: boolean,

    /**
     * Text to show when in loading state
     */
    loadingTitle?: string,

    /**
     * a callback function to call on error — receives the click event and the thrown error
     */
    onError?: (e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void,

    /**
     * any custom inline styles to the button 
     */
    styles?: React.CSSProperties,

    /**
     * any custom inline styles for the icon container 
     */
    iconStyles?: React.CSSProperties,

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
     * Casing applied to the label. Defaults to 'sentence'.
     */
    textMode?: ButtonComponentTextMode,

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
import { AsyncButtonProps } from 'uxp/components';
```

## Related Types

- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

