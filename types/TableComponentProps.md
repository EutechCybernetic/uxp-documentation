# TableComponentProps


Props for the TableComponent.


## Definition

```tsx
export interface TableComponentProps {
    /** Array of data objects or a function to fetch paginated data */
    data: RowData[] | ((page: number, pageSize: number) => Promise<{ items: RowData[] }>);

    /** List of columns to display */
    columns: TableColumn[];

    /** Number of rows per page */
    pageSize: number;

    /** Total number of items or a function returning the total */
    total: number | (() => Promise<number>);

    /** Loading state */
    loading?: boolean;

    /** Message to show when there are no items */
    noItemsMessage?: string | React.ReactNode;

    /** Edit column configuration */
    editColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onEdit?: (item: RowData) => void;
    };

    /** Delete column configuration */
    deleteColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onDelete?: (item: RowData) => Promise<void>;
    };

    /** Minimum width for any table cell */
    minCellWidth?: number;

    /** Callback when a row is clicked */
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, item: RowData) => void;

    /** Callback when a cell/column is clicked */
    onClickColumn?: (e: React.MouseEvent<HTMLDivElement>, item: RowData, column: TableColumn) => void;

    /** Disable pagination and show all items */
    disablePagination?: boolean;

    /** Enable inline editing mode with callbacks */
    editable?: EditableConfig;
}
```

## Usage

```tsx
import { TableComponentProps } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [EditableConfig](../types/EditableConfig.md)

