# SimpleTableBaseProps

Base props shared by all variants


## Definition

```tsx
interface SimpleTableBaseProps {
    /** Columns for the table */
    columns: TableColumn[];

    /** Text to display when there is no data */
    noDataText?: string;

    /** Page size for pagination */
    pageSize?: number;

    /** Disable pagination */
    disablePagination?: boolean;

    /** Search configuration */
    search?: SimpleTableSearch;

    /** Filter components to show in header */
    filters?: React.ReactNode;

    /** Action buttons to show in header */
    actions?: React.ReactNode;

    /** Initial loading state */
    loading?: boolean;

    /** Callback when "Add New" button is clicked (e.g., to open a form panel) */
    onClickAddNew?: () => void;

    /** Callback for saving a new item added inline (returns success/error) */
    onAddItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Show/hide the default "Add New" button at bottom (default: true if onClickAddNew or onAddItem exists) */
    showAddButton?: boolean;

    /** Custom label for the "Add New" button (default: '+ Add New') */
    addButtonLabel?: string;
}
```

## Usage

```tsx
import { SimpleTableBaseProps } from 'uxp/components';
```

## Related Types

- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [SimpleTableSearch](../types/SimpleTableSearch.md)
- [RowData](../types/RowData.md)

