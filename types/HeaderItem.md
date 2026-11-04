# HeaderItem


A button an app adds to the shell header (Configuration.yml `headerItems`).
It opens a page (`link`) or a right sidebar (`panel`). The open sidebar is the `?panel` URL param.


## Definition

```tsx
export interface HeaderItem {
    /** Item id from Configuration.yml */
    id: string;
    /** `{bundleId}.{id}`: the value of the `?panel` URL param */
    globalId: string;
    appId: string;
    label: string;
    icon: string;
    /** Page to open */
    link?: string;
    /** Global id of the UI rendered in the sidebar, e.g. `iviva-agenticai-app/chat-panel` */
    panel?: string;
    /** Global id of a small UI drawn in the header in place of the icon (desktop only; phones show the icon) */
    widget?: string;
    userGroups?: string[];
    appRoles?: string[];
    /** Header order */
    priority?: number;
    /** `yml` (an app item) or `custom` (added by an admin) */
    source?: string;
    /** An admin changed this app item */
    isModified?: boolean;
    enabled?: boolean;
}
```

## Usage

```tsx
import { HeaderItem } from 'uxp/components';
```

