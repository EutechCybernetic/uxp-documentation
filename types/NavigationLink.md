# NavigationLink

## Definition

```tsx
export interface NavigationLink {
    id: string;
    label: string;
    icon: string;
    link: string;
    target?: string;
    children?: NavigationLink[];
    userGroups?: string[];
    appRoles?: string[];
    parentId?: string;
}
```

## Usage

```tsx
import { NavigationLink } from 'uxp/components';
```

