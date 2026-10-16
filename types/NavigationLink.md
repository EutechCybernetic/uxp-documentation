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
    /** Tags shown as chips next to the label (e.g. Beta). The server sends them normalised. */
    tags?: NavigationLinkTag[];
    /** The page a View link opens. Empty when none was chosen. */
    pageId?: string;
}
```

## Usage

```tsx
import { NavigationLink } from 'uxp/components';
```

## Related Types

- [NavigationLinkTag](../types/NavigationLinkTag.md)

