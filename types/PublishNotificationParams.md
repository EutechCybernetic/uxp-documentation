# PublishNotificationParams

## Definition

```tsx
export interface PublishNotificationParams {
    /** Stable unique ID for this notification — used to create or update */
    notificationId: string;
    /** Object type tag used for category routing (stored lowercase) */
    objectType: string;
    severity?: NotificationSeverity;
    message?: string;
    /** Key of the related source object */
    objectKey?: string;
    /** Source system's own state string (stored as-is) */
    internalState?: string;
    /** Extra metadata for link template placeholders. Object is JSON-serialised automatically. */
    additionalParams?: Record<string, string> | string;
    /** Restrict visibility to these user keys (in addition to category group rules) */
    allowedUserKeys?: string[];
}
```

## Usage

```tsx
import { PublishNotificationParams } from 'uxp/components';
```

## Related Types

- [NotificationSeverity](../types/NotificationSeverity.md)

