# PasswordInputProps




## Definition

```tsx
export interface PasswordInputProps extends InputSizeProps, InputStateProps {
    /**
     * The current value of the input.
     */
    value: string;

    /**
     * Called whenever the value changes.
     */
    onChange: (value: string) => void;

    /**
     * Placeholder text shown when the input is empty.
     */
    placeholder?: string;

    /**
     * Additional class names to apply to the wrapper.
     */
    className?: string;

    /**
     * Tab index for keyboard navigation. Defaults to 0.
     */
    tabIndex?: number;

    /**
     * Called when the input gains focus.
     */
    onFocus?: () => void;

    /**
     * Called when the input loses focus.
     */
    onBlur?: (value: string) => void;

    /**
     * Called on key down events.
     */
    onKeyDown?: (e: React.KeyboardEvent<HTMLInputElement>, val: string) => void;

    /**
     * Renders the input inline.
     */
    inline?: boolean;

    /**
     * Additional inline styles applied to the input element.
     */
    style?: React.CSSProperties;

    /**
     * Custom content to render on the left side of the input (e.g., icons)
     */
    prefix?: React.ReactNode;

    /**
     * Custom content to render on the right side of the input (e.g., icons, buttons)
     */
    suffix?: React.ReactNode;
}
```

## Usage

```tsx
import { PasswordInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

