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
     * a callback function to call on error — receives the click event and the thrown error
     */
    onError?: (e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void

    /**
     * Native (HTML `title`) hover tooltip. Icon buttons have no visible caption,
     * so set this to describe the action; it is also used as the `aria-label`.
     */
    tooltip?: string,

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
    buttonType?: ButtonComponentType

    /**
   * Button variation 
   */
    variant?: ButtonComponentVarient,

    /**
     * Size of the button. Defaults to 'medium'.
     */
    size?: ButtonComponentSize,

    /**
     * If true, shows the button in a loading state.
     */
    loading?: boolean,

    /**
     * Rendering mode. Defaults to 'transparent' — no background/border,
     * variant BG color as the icon color. Set to 'filled' for the classic look.
     */
    mode?: ButtonComponentMode,
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
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)
- [ButtonComponentMode](../types/ButtonComponentMode.md)

