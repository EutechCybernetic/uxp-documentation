# SafeLinkProps


Props for SafeLink.
Extends default anchor props with router awareness.


## Definition

```tsx
interface SafeLinkProps extends React.AnchorHTMLAttributes<HTMLAnchorElement> {
    /**
     * Target URL or path
     * @example "/view/system/configurations"
     */
    to: string;

    /** Replace history instead of pushing (only in router) */
    replace?: boolean;

    /**
     * Link text or elements
     * @example "Configurations"
     */
    children: React.ReactNode;

    /** CSS class name */
    className?: string;
}
```

## Usage

```tsx
import { SafeLinkProps } from 'uxp/components';
```

