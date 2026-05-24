# TabInjection

## Definition

```tsx
export interface TabInjection {
    /** Fully-qualified id: bundleId/tabId — must be unique */
    id: string;
    /** Target object type (lowercase) */
    objectType: string;
    /** Default tab label */
    name: string;
    /** Default icon class */
    icon?: string;
    /** Ordered list of component IDs to render inside this tab */
    components: TabInjectionComponent[];
    appRoles?: string[];
    userGroups?: string[];
}
```

## Usage

```tsx
import { TabInjection } from 'uxp/components';
```

## Related Types

- [TabInjectionComponent](../types/TabInjectionComponent.md)

