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
    /** Whether the tab content can be manually refreshed. Defaults to true when not set. */
    refreshable?: boolean;
    /** Event names (from eventDispatcher) that automatically refresh this tab's content. */
    events?: string[];
}
```

## Usage

```tsx
import { TabInjection } from 'uxp/components';
```

## Related Types

- [TabInjectionComponent](../types/TabInjectionComponent.md)

