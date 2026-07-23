# IRenderUIItemProps

## Definition

```tsx
export interface IRenderUIItemProps {
    id: string,
    label?: string,
    description?: string,
    component: any,
    uiProps?: any,
    title?: string,
    /**
     * @deprecated in V5 all UIs will be rendered within the base layout - all will have the header and sidebar
     */
    showDefaultHeader?: boolean,
    // Permissions — auto-populated from the bundle.json entry by the per-project uxp.ts wrapper.
    // Do not set manually in register calls; bundle.json is the single authoring place.
    appRoles?: string[],    // qualified "App:role" strings — empty/absent = visible to everyone
    userGroups?: string[]   // user group keys
}
```

## Usage

```tsx
import { IRenderUIItemProps } from 'uxp/components';
```

