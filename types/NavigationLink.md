# NavigationLink

## Definition

```tsx
export interface NavigationLink {
    id: string;
    label: string;
    icon: string;
    link: string;
    target?: string;
    type?: string;
    children?: NavigationLink[];
    userGroups?: string[];
    appRoles?: string[];
    parentId?: string;
    /** Mark this link as publicly accessible without login. NOT inherited by children — each must be explicitly marked. */
    isPublic?: boolean;
}
```

## Usage

```tsx
import { NavigationLink } from 'uxp/components';
```

