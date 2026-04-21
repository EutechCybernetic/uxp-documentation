# ButtonComponentProps


Props for the ButtonComponent.


## Definition

```tsx
export interface ButtonComponentProps {
    /**
     * Caption for the button.
     */
    title?: string;

    /**
     * Left side icon - supports FontAwesome, Phosphor, image URL, text/emoji, or React element
     */
    leftIcon?: ButtonIcon;

    /**
     * Right side icon - supports FontAwesome, Phosphor, image URL, text/emoji, or React element
     */
    rightIcon?: ButtonIcon;

    /**
     * Additional CSS class names to apply to the button.
     */
    className?: string;

    /**
     * Callback invoked when the button is clicked, supports sync or async functions.
     */
    onClick?: (e?: React.MouseEvent<HTMLButtonElement>) => void | Promise<void>;

    /**
     * Callback invoked on error during the onClick execution.
     */
    onError?: (e: React.MouseEvent<HTMLButtonElement>) => void;

    /**
     * If true, shows the button in a loading state.
     */
    loading?: boolean;

    /**
     * Caption to show when the button is in a loading state.
     */
    loadingTitle?: string;

    /**
     * If true, marks the button as active.
     */
    active?: boolean;

    /**
     * If true, disables the button.
     */
    disabled?: boolean;

    /**
     * Custom inline styles for the button.
     */
    styles?: React.CSSProperties;

    /**
     * Custom inline styles for the left icon container.
     */
    leftIconStyles?: React.CSSProperties;

    /**
     * Custom inline styles for the right icon container.
     */
    rightIconStyles?: React.CSSProperties;

    /**
     * HTML button type. Defaults to 'button'.
     */
    type?: ButtonComponentType;

    /**
     * Visual variant of the button. Defaults to 'primary'.
     */
    variant?: ButtonComponentVarient;

    /**
     * If true, renders the button in icon-only mode.
     */
    iconOnly?: boolean;

    /**
     * Size of the button. Defaults to 'medium'.
     */
    size?: ButtonComponentSize;
}
```

## Usage

```tsx
import { ButtonComponentProps } from 'uxp/components';
```

## Related Types

- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)

