# INotificationProps

## Definition

```tsx
interface INotificationProps {
    /**
     * Message to show. Optional when `children` (or a card `title` + `children`) is provided.
     */
    message?: string,
    /**
     * Optional card header. When set, the block renders as a card: `title` on top, body below.
     */
    title?: string,
    /**
     * Optional body content. Rendered instead of `message` when provided (in both card and flat modes).
     */
    children?: React.ReactNode,
    /**
     * Visual variant. Defaults to no variant (neutral style).
     */
    variant?: NotificationVariant,
    /**
     * Size mode. `compact` reduces padding and font size for inline contexts.
     */
    mode?: NotificationMode,
    /**
     * Visual layout. `bordered` uses a light tint background with a thick left border instead of a solid fill.
     */
    layout?: NotificationLayout,
    /**
     * Optional right-aligned content (e.g. an action button). In flat mode the
     * message sits on the left and this on the right.
     */
    action?: React.ReactNode,
    /**
     * Any extra css classes to apply
     */
    class?: string,
    /**
     * any extra styles
     */
    styles?: any
}
```

## Usage

```tsx
import { INotificationProps } from 'uxp/components';
```

## Related Types

- [NotificationVariant](../types/NotificationVariant.md)
- [NotificationMode](../types/NotificationMode.md)
- [NotificationLayout](../types/NotificationLayout.md)

