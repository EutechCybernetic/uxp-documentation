# IIconButtonProps

## Definition

```tsx
interface IIconButtonProps {
    /**
     * Icon to show - supports FontAwesome, Phosphor, image URL, text/emoji, or React element
     * Pass either icon or type
     */
    icon?: ButtonIcon
    /**
     * button type (optional)
     */
    type?: IButtonType,
    /**
     * Set button to active state when true
     */
    active?: boolean,
    /**
     * Set button to disabled state when true
     */
    disabled?: boolean,
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
    * Any extra css classes to apply
    */
    className?: string,
    /**
     * set to `true` to prevent a border from being shown for the button
     */
    borderless?: boolean;

    /**
    * Button type
    */
    buttonType?: "button" | "submit" | "reset",

    /**
   * Button variation 
   */
    variant?: 'primary' | 'secondary' | 'danger',

    /**
   * @deprecated Use inline styles instead
   */
    size?: IButtonSize,
}
```

## Usage

```tsx
import { IIconButtonProps } from 'uxp/components';
```

## Related Types

- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [IButtonType](../types/IButtonType.md)
- [IButtonSize](../types/IButtonSize.md)

