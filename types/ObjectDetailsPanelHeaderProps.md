# ObjectDetailsPanelHeaderProps


Props for the ObjectDetailsPanelHeader component.


## Definition

```tsx
export interface ObjectDetailsPanelHeaderProps {
    /**
     * Row data item. When provided, function-based props can use this data.
     */
    item?: RowData;

    /**
     * Breadcrumb items to display at the top. Can be static or a function that receives the item.
     */
    breadcrumb?: BreadcrumbItem[] | ((item: RowData, loading?: boolean) => BreadcrumbItem[]);

    /**
     * Main title content (string or JSX). Can be static or a function that receives the item.
     */
    title: string | React.ReactNode | ((item: RowData, loading?: boolean) => React.ReactNode);

    /**
     * Status content to display inline with title (e.g., chip, badge). Can be static or a function that receives the item.
     */
    status?: React.ReactNode | ((item: RowData, loading?: boolean) => React.ReactNode);

    /**
     * Subtitle content (string or JSX) displayed below title in smaller text. Can be static or a function that receives the item.
     */
    subtitle?: React.ReactNode | ((item: RowData, loading?: boolean) => React.ReactNode);

    /**
     * Array of analytics cards to display on the right side. Can be static or a function that receives the item.
     */
    analytics?: AnalyticsCardProps[] | ((item: RowData, loading?: boolean) => AnalyticsCardProps[]);

    /**
     * Background image URL. Can be static or a function that receives the item.
     */
    backgroundImage?: string | ((item: RowData, loading?: boolean) => string);

    /**
     * Whether the header is in loading state.
     */
    loading?: boolean;

    /**
     * custom classname for additional styles
     */
    className?: string
}
```

## Usage

```tsx
import { ObjectDetailsPanelHeaderProps } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [BreadcrumbItem](../types/BreadcrumbItem.md)
- [AnalyticsCardProps](../types/AnalyticsCardProps.md)

