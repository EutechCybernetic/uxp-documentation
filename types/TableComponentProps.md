# TableComponentProps


Props for the TableComponent.


## Definition

```tsx
export interface TableComponentProps {
    /** Array of data objects or a function to fetch paginated data */
    data: RowData[] | ((page: number, pageSize: number, query?: string, filters?: Filters) => Promise<{ items: RowData[] }>);

    /** List of columns to display */
    columns: TableColumn[];

    /** Number of rows per page */
    pageSize: number;

    /** Total number of items or a function returning the total */
    total: number | ((query?: string, filters?: Filters) => Promise<number>);

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

    /** Search configuration */
    search?: {
        enable: boolean;
        /** Fields to search (required for static array data) */
        fields?: string[];
    };

    /** OSC-style filter panel configuration */
    filters?: FilterConfig;

    /** Custom action buttons rendered in the toolbar (right side) */
    actionButtons?: ReactNode;

    /** Content rendered as the last row inside the table card (e.g. "+ Add New") */
    addNewRow?: ReactNode;
}
```

## Usage

```tsx
import { TableComponentProps } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [EditableConfig](../types/EditableConfig.md)
- [FilterConfig](../types/FilterConfig.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)

