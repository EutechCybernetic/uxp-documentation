# TableCell


Individual table cell component that renders a single cell within a table row.
Handles rendering of regular data cells and special action columns.



## Installation

```tsx
import { TableCell } from 'uxp/components';
```

## Signature

```tsx
const TableCell: React.FunctionComponent<TableCellProps>
```

## Examples

```tsx
tsx
<TableCell
  row={rowData}
  column={columnDef}
  renderCell={(row, col) => <span>{row[col.id]}</span>}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|row|any|Yes|-|-|
|column|[ExtendedColumn](../types/ExtendedColumn.md)|Yes|-|-|
|renderCell|(row: any, column: ExtendedColumn) => React.ReactNode|No|-|-|

## Related Types

- [TableCellProps](../types/TableCellProps.md)
- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)

