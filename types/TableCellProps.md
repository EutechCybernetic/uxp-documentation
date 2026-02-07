# TableCellProps


Props for TableCell component


## Definition

```tsx
export interface TableCellProps {
    /** The row data object */
    row: any;
    /** The column definition with calculated widths */
    column: ExtendedColumn;
    /** Custom cell renderer function */
    renderCell?: (row: any, column: ExtendedColumn) => React.ReactNode;
}
```

## Usage

```tsx
import { TableCellProps } from 'uxp/components';
```

## Related Types

- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)

