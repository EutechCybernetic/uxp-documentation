# TableRow


Individual table row component that renders a single row with cells.
Supports regular display mode and editable mode with inline editing capabilities.
Can display expandable child rows and handle selection state.



## Installation

```tsx
import { TableRow } from 'uxp/components';
```

## Signature

```tsx
const TableRow: React.FunctionComponent<TableRowProps>
```

## Examples

```tsx
tsx
// Regular mode
<TableRow
  row={rowData}
  columns={columns}
  onClickRow={(e, row) => console.log('Row clicked', row)}
  isRowSelected={(row) => row.id === selectedId}
/>
```

```tsx
tsx
// Editable mode
<TableRow
  row={rowData}
  columns={columns}
  editable={{
    onAddRow: async (row) => { await api.create(row); return true; },
    onUpdateRow: async (row) => { await api.update(row); return true; },
    onDeleteRow: async (row) => { await api.delete(row); return true; },
    onCancelNewRow: () => console.log('Cancelled'),
    onCancelEditing: () => console.log('Edit cancelled')
  }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|row|[RowData](../types/RowData.md)|Yes|-|-|

## Related Types

- [TableRowProps](../types/TableRowProps.md)
- [TableRowBasicProps](../types/TableRowBasicProps.md)
- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)
- [RowData](../types/RowData.md)
- [EditableRowConfig](../types/EditableRowConfig.md)

