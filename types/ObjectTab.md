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
}
```

## Usage

```tsx
import { ObjectTab } from 'uxp/components';
```

## Related Types

- [ObjectTabComponent](../types/ObjectTabComponent.md)

