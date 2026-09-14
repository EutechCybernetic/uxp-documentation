# ErrorStateProps


Props for the ErrorState component.


## Definition

```tsx
export interface ErrorStateProps {
    /**
     * Headline message, e.g. "Access Denied".
     */
    title?: string;

    /**
     * Supporting detail. A ReactNode so tooltip/dropdown content can be rich.
     */
    description?: React.ReactNode;

    /**
     * Icon for the status badge — FontAwesome, Phosphor, image URL, text/emoji or
     * a React element. Defaults per variant when omitted.
     */
    icon?: ButtonIcon;

    /**
     * Status code (e.g. `'404'`) rendered oversized in place of the icon badge.
     * `default` mode only.
     */
    code?: string;

    /**
     * Tone of the state. Defaults to `'error'`.
     */
    variant?: ErrorStateVariant;

    /**
     * Maximum presentation mode. Defaults to `'default'`. Degrades automatically
     * when the container is too small; never upgrades.
     */
    mode?: ErrorStateMode;

    /**
     * Where the description goes in `inline` mode. Defaults to `'dropdown'`.
     * Ignored in the other modes, which always render the description.
     */
    descriptionDisplay?: ErrorStateDescriptionDisplay;

    /**
     * Optional action, e.g. a retry or go-back button.
     */
    action?: React.ReactNode;

    /**
     * Additional CSS class names to apply to the root element.
     */
    className?: string;

    /**
     * Custom inline styles for the root element.
     */
    styles?: React.CSSProperties;
}
```

## Usage

```tsx
import { ErrorStateProps } from 'uxp/components';
```

## Related Types

- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ErrorStateVariant](../types/ErrorStateVariant.md)
- [ErrorStateMode](../types/ErrorStateMode.md)
- [ErrorStateDescriptionDisplay](../types/ErrorStateDescriptionDisplay.md)

