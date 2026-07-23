# BaseTableComponentProps


Props for BaseTableComponent


## Definition

```tsx
export interface BaseTableComponentProps {
    /** Processed columns with calculated widths */
    columns: { [id: string]: ExtendedColumn };
    /** Array of row data to display */
    data: RowData[];
    /** Show loading state with skeleton rows */
    loading: boolean;
    /** Message or component to display when no items are found */
    noItemsMessage?: string | React.ReactNode;
    /** Total width of the table */
    totalWidth: string | number;
    /** Callback when a column is resized */
    handleResize: (id: string, width: number) => void;
    /** Custom header renderer */
    renderHeader?: (columns: { [id: string]: ExtendedColumn }, handleResize: (id: string, width: number) => void) => React.ReactNode;
    /** Custom row renderer */
    renderRow?: (tableRowProps: TableRowProps) => React.ReactNode;
    /** Custom renderer for child/nested rows */
    renderChildRows?: (childRows: RowData[], rowProps: TableRowBasicProps) => React.ReactNode
    /** Custom cell renderer — replaces the default TableCell output for every cell */
    renderCell?: (row: RowData, column: ExtendedColumn) => React.ReactNode;
    /** Callback when a row is clicked */
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, item: RowData) => void;
    /** Function to determine if a row is selected */
    isRowSelected?: (item: RowData) => boolean
    /** Callback when a row is selected */
    onSelectRow?: (item: RowData) => void,
    /** Current sort configuration */
    sort?: Sort,
    /** Enable sorting multiple columns simultaneously */
    multiColumnSort?: boolean,
    /** Callback when sort changes */
    onChangeSort?: (sort: Sort) => void
    /** Enable editable mode with inline editing */
    editable?: EditableConfig;
}
```

## Usage

```tsx
import { BaseTableComponentProps } from 'uxp/components';
```

## Related Types

- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)
- [RowData](../types/RowData.md)
- [TableRowProps](../types/TableRowProps.md)
- [TableRowBasicProps](../types/TableRowBasicProps.md)
- [EditableRowConfig](../types/EditableRowConfig.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [EditableConfig](../types/EditableConfig.md)

