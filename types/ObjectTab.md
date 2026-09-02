# ObjectTab

## Definition

```tsx
export interface ObjectTab {
    tabId: string;
    objectType: string;
    contributionId: string;
    name: string;
    icon: string;
    priority: number;
    appRoles: string;
    userGroups: string;
    status?: 'Active' | 'Disabled';
    components: ObjectTabComponent[];
    /** When denied: `true` shows the not-authorised error; `false`/absent hides (tab default). */
    showUnauthorizedError?: boolean;
}
```

## Usage

```tsx
import { ObjectTab } from 'uxp/components';
```

## Related Types

- [ObjectTabComponent](../types/ObjectTabComponent.md)

