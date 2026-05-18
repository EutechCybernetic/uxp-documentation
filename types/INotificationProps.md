# INotificationProps

## Definition

```tsx
interface INotificationProps {
    /**
     * Message to show
     */
    message: string,
    /**
     * Visual variant. Defaults to no variant (neutral style).
     */
    variant?: NotificationVariant,
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

