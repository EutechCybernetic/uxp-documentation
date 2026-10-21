# INotificationProps

## Definition

```tsx
interface INotificationProps {
    /**
     * Message to show. Optional when `children` (or a card `title` + `children`) is provided.
     * @example "Chiller 02 will be offline on 12 Aug from 09:00 to 11:00."
     */
    message?: string,
    /**
     * Optional card header. When set, the block renders as a card: `title` on top, body below.
     * @example "Scheduled maintenance"
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
     * Leading icon. `true` shows the variant's icon (info, check, warning, cross); a string is a custom icon, as 'fas name'.
     * @example true
     */
    icon?: boolean | string,
    /**
     * Lines shown under the message or title, each with an optional icon, title, text, chips and button.
     * @example [{ title: 'Alarm escalations', text: 'User groups not in this account.', chips: [{ label: 'Night Shift', variant: 'warning' }] }]
     */
    lines?: INotificationLine[],
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
- [INotificationLine](../types/INotificationLine.md)
- [ChipVariant](../types/ChipVariant.md)

