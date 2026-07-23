# ResolveNotificationsFilters

Filters for bulk-resolving notifications. At least one must be provided (AND-combined).


## Definition

```tsx
export interface ResolveNotificationsFilters {
    /** Resolve these specific notification IDs */
    notificationIds?: string[];
    /** Resolve notifications with this object type */
    objectType?: string;
    /** Resolve notifications with this object key */
    objectKey?: string;
}
```

## Usage

```tsx
import { ResolveNotificationsFilters } from 'uxp/components';
```

