# BreadcrumbProps


Props for the Breadcrumb component.


## Definition

```tsx
export interface BreadcrumbProps {
    /**
     * Array of breadcrumb items to display.
     */
    items: BreadcrumbItem[];

    /**
     * Maximum number of items to display before collapsing. Defaults to 4.
     */
    maxItems?: number;

    /**
     * Number of items to show on the left side before ellipsis. Defaults to 1.
     */
    itemsOnLeft?: number;

    /**
     * Number of items to show on the right side after ellipsis. Minimum 2 (parent + active). Defaults to 2.
     */
    itemsOnRight?: number;

    /**
     * Custom separator between breadcrumb items. Defaults to '>'.
     */
    separator?: React.ReactNode;

    /**
     * Additional class names for the breadcrumb container.
     */
    className?: string;

    /**
     * Text color for breadcrumb items. Defaults to inherit from parent.
     */
    textColor?: string;

    /**
     * Background color for the breadcrumb container. Defaults to inherit from parent.
     */
    backgroundColor?: string;

    /**
     * Color for active/current breadcrumb item. Defaults to inherit from textColor.
     */
    activeColor?: string;

    /**
     * Color for separator between items. Defaults to inherit from textColor with opacity.
     */
    separatorColor?: string;

    /**
     * Hover color for interactive items. Defaults to inherit from textColor.
     */
    hoverColor?: string;

    /**
     * Callback when a breadcrumb item is clicked.
     */
    onItemClick?: (item: BreadcrumbItem, index: number) => void;
}
```

## Usage

```tsx
import { BreadcrumbProps } from 'uxp/components';
```

## Related Types

- [BreadcrumbItem](../types/BreadcrumbItem.md)

