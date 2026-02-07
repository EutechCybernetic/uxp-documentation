# BreadcrumbItem


Represents a single breadcrumb item.


## Definition

```tsx
export interface BreadcrumbItem {
    /**
     * Display label for the breadcrumb item.
     */
    label: string;

    /**
     * Optional icon to display before the label.
     */
    icon?: IconProp;

    /**
     * Link/path for the breadcrumb item. If not provided, item is not clickable.
     */
    link?: string;

    /**
     * Optional click handler. If provided, will be called instead of navigation.
     */
    onClick?: (item: BreadcrumbItem) => void;
}
```

## Usage

```tsx
import { BreadcrumbItem } from 'uxp/components';
```

