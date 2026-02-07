# TableComponent


TableComponent displays tabular data with optional pagination, edit/delete actions, and custom columns.
Supports inline editing mode with built-in save/cancel/delete actions.



## Installation

```tsx
import { TableComponent } from 'uxp/components';
```

## Signature

```tsx
const TableComponent: React.MemoExoticComponent<React.FunctionComponent<TableComponentProps>>
```

## Examples

```tsx
tsx
// Basic table with static data
<TableComponent
  data={[{ id: 1, name: 'Item 1' }]}
  columns={[{ id: 'name', label: 'Name' }]}
  pageSize={10}
  total={1}
/>
```

```tsx
tsx
// Table with async data fetching
<TableComponent
  data={(page, pageSize) => fetch(`/api/items?page=${page}&size=${pageSize}`).then(res => res.json())}
  columns={[{ id: 'name', label: 'Name' }]}
  pageSize={20}
  total={() => fetch('/api/items/count').then(res => res.json())}
  editColumn={{ enable: true, onEdit: (item) => console.log(item) }}
  deleteColumn={{ enable: true, onDelete: async (item) => console.log(item) }}
/>
```

```tsx
tsx
// Table with inline editing mode
<TableComponent
  data={users}
  columns={[
    {
      id: 'name',
      label: 'Name',
      renderEditItem: (item, update) => (
        <input value={item.name} onChange={e => update({...item, name: e.target.value})} />
      )
    },
    { id: 'email', label: 'Email' }
  ]}
  pageSize={10}
  total={users.length}
  editable={{
    onAddItem: async (index, item) => { await api.create(item); return true; },
    onUpdateItem: async (index, item) => { await api.update(item); return true; },
    onDeleteItem: async (index, item) => { await api.delete(item); return true; }
  }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|RowData[] \| ((page: number, pageSize: number) => Promise<{ items: RowData[] }>)|Yes|-|-|
|columns|[TableColumn[]](../types/TableColumn.md)|Yes|-|-|
|pageSize|number|Yes|-|-|
|total|number \| (() => Promise<number>)|Yes|-|-|
|loading|boolean|No|-|-|
|noItemsMessage|string \| React.ReactNode|No|-|-|
|editColumn|{ enable: boolean; label?: string; renderColumn?: (item: RowData) => React.ReactNode; onEdit?: (item: RowData) => void; }|No|-|-|
|deleteColumn|{ enable: boolean; label?: string; renderColumn?: (item: RowData) => React.ReactNode; onDelete?: (item: RowData) => Promise<void>; }|No|-|-|
|minCellWidth|number|No|-|-|
|onClickRow|(e: React.MouseEvent<HTMLDivElement>, item: RowData) => void|No|-|-|
|onClickColumn|(e: React.MouseEvent<HTMLDivElement>, item: RowData, column: TableColumn) => void|No|-|-|
|disablePagination|boolean|No|-|-|
|editable|[EditableConfig](../types/EditableConfig.md)|No|-|-|

## Related Types

- [TableComponentProps](../types/TableComponentProps.md)
- [RowData](../types/RowData.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [EditableConfig](../types/EditableConfig.md)

