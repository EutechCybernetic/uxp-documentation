# ButtonComponentProps


Props for the ButtonComponent.


## Definition

```tsx
export interface ButtonComponentProps {
    /**
     * Caption for the button.
     * @example "Save"
     */
    title?: string;

    /**
     * Native (HTML `title`) hover tooltip. When omitted it falls back to
     * `title`, so every button has a tooltip by default. For icon-only buttons
     * this value is also used as the `aria-label` for screen readers.
     */
    tooltip?: string;

    /**
     * Left side icon - supports FontAwesome, Phosphor, image URL, text/emoji, or React element
     * @example "fas save"
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
     * While an async callback runs, the button shows its loading state.
     * @example Sync handler
     * ```tsx
     * onClick={() => alert('Clicked')}
     * ```
     * @example Async handler
     * ```tsx
     * onClick={async () => {
     *     await new Promise(resolve => setTimeout(resolve, 1500)); // e.g. save a record
     * }}
     * ```
     */
    onClick?: (e?: React.MouseEvent<HTMLButtonElement>) => void | Promise<void>;

    /**
     * Callback invoked on error during the onClick execution.
     * Receives the click event and the thrown error. Both are optional so existing
     * one-argument handlers keep their exact meaning.
     */
    onError?: (e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void;

    /**
     * If true, shows the button in a loading state.
     * @default false
     */
    loading?: boolean;

    /**
     * Caption to show when the button is in a loading state.
     * @example "Saving..."
     */
    loadingTitle?: string;

    /**
     * If true, marks the button as active.
     * @default false
     */
    active?: boolean;

    /**
     * If true, disables the button.
     * @default false
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
     * HTML button type.
     * @default 'button'
     */
    type?: ButtonComponentType;

    /**
     * Visual variant of the button.
     * @default 'primary'
     */
    variant?: ButtonComponentVarient;

    /**
     * If true, renders the button in icon-only mode.
     * @default false
     */
    iconOnly?: boolean;

    /**
     * Size of the button.
     * @default 'medium'
     */
    size?: ButtonComponentSize;

    /**
     * Rendering mode for icon-only buttons.
     * Ignored when the button is not icon-only.
     * @default 'transparent'
     */
    mode?: ButtonComponentMode;

    /**
     * Casing applied to the label.
     * @default 'sentence'
     */
    textMode?: ButtonComponentTextMode;
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
- [ButtonComponentMode](../types/ButtonComponentMode.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

