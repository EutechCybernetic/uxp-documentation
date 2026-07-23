# BaseTableComponent


Core table component that displays tabular data with rich features including sorting, resizing,
selection, expansion, and inline editing capabilities.

Features:
- Column sorting (single and multi-column)
- Column resizing (resets on refresh)
- Row selection
- Expandable child rows
- Inline editing mode
- Custom renderers for cells, rows, and headers
- Loading states with skeleton rows
- Action columns (edit, delete, custom actions)



## Installation

```tsx
import { BaseTableComponent } from 'uxp/components';
```

## Signature

```tsx
const BaseTableComponent: React.FunctionComponent<BaseTableComponentProps>
```

## Examples

```tsx
tsx
// Basic usage
<BaseTableComponent
  columns={processedColumns}
  data={users}
  loading={false}
  totalWidth="100%"
  handleResize={(id, width) => console.log('Resized', id, width)}
/>
```

```tsx
tsx
// With sorting
<BaseTableComponent
  columns={processedColumns}
  data={users}
  loading={false}
  totalWidth="100%"
  handleResize={(id, width) => {}}
  sort={{ name: 1, age: -1 }}
  multiColumnSort={true}
  onChangeSort={(newSort) => setSort(newSort)}
/>
```

```tsx
tsx
// With editable mode
<BaseTableComponent
  columns={processedColumns}
  data={users}
  loading={false}
  totalWidth="100%"
  handleResize={(id, width) => {}}
  editable={{
    onAddItem: async (index, item) => {
      await api.create(item);
      return true;
    },
    onUpdateItem: async (index, item) => {
      await api.update(item);
      return true;
    },
    onDeleteItem: async (index, item) => {
      await api.delete(item);
      return true;
    },
    onCancelNewItem: () => console.log('Cancelled new item'),
    onCancelItem: () => console.log('Cancelled edit')
  }}
/>
```

```tsx
tsx
// With selection and click handlers
<BaseTableComponent
  columns={processedColumns}
  data={users}
  loading={false}
  totalWidth="100%"
  handleResize={(id, width) => {}}
  onClickRow={(e, row) => console.log('Clicked', row)}
  isRowSelected={(row) => selectedIds.includes(row.id)}
  onSelectRow={(row) => toggleSelection(row.id)}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|columns|{ [id: string]: ExtendedColumn }|Yes|-|-|
|data|[RowData[]](../types/RowData.md)|Yes|-|-|
|loading|boolean|Yes|-|-|
|noItemsMessage|string \| React.ReactNode|No|-|-|
|totalWidth|string \| number|Yes|-|-|
|handleResize|(id: string, width: number) => void|Yes|-|-|
|renderHeader|(columns: { [id: string]: ExtendedColumn }, handleResize: (id: string, width: number) => void) => React.ReactNode|No|-|-|
|renderRow|(tableRowProps: TableRowProps) => React.ReactNode|No|-|-|
|renderChildRows|(childRows: RowData[], rowProps: TableRowBasicProps) => React.ReactNode|No|-|-|
|renderCell|(row: RowData, column: ExtendedColumn) => React.ReactNode|No|-|-|
|onClickRow|(e: React.MouseEvent<HTMLDivElement>, item: RowData) => void|No|-|-|
|isRowSelected|(item: RowData) => boolean|No|-|-|
|onSelectRow|(item: RowData) => void|No|-|-|
|sort|[Sort](../types/Sort.md)|No|-|-|
|multiColumnSort|boolean|No|-|-|
|onChangeSort|(sort: Sort) => void|No|-|-|
|editable|[EditableConfig](../types/EditableConfig.md)|No|-|-|

## Related Types

- [BaseTableComponentProps](../types/BaseTableComponentProps.md)
- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)
- [RowData](../types/RowData.md)
- [TableRowProps](../types/TableRowProps.md)
- [TableRowBasicProps](../types/TableRowBasicProps.md)
- [EditableRowConfig](../types/EditableRowConfig.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [EditableConfig](../types/EditableConfig.md)

