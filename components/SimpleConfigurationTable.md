# SimpleConfigurationTable


A versatile table component with flexible feature-based configuration.

**Data Loading:**
- Static array: `data: RowData[]`
- Simple function: `data: () => Promise<RowData[]>`
- Paginated: `data: (page, pageSize, query?, filters?, sort?) => Promise<{ items: RowData[] }>`

**Features (combine as needed):**
- **Add Button**: Provide `onClickAddNew` (opens form) OR `onAddItem` (inline editing) → shows "Add New" button
- **Inline Editing**: Provide `onUpdateItem`, `onDeleteItem`, `onReorderItems`
- **Row Interaction**: Provide `onClickRow` or `onClickColumn` (mutually exclusive with inline editing)
- **Search**: Local or server-side with `search` prop
- **Filters**: Custom filter components in header
- **Actions**: Custom action buttons in header
- **Pagination**: Automatic for array/function data, manual for paginated functions

**Add Button Control:**
- `onClickAddNew` - Direct callback when button clicked (for opening forms)
- `onAddItem` - Save callback for inline editing (adds empty row when button clicked)
- `showAddButton={false}` - Hide default add button
- `addButtonLabel="+ Custom Label"` - Customize button text



## Installation

```tsx
import { SimpleConfigurationTable } from 'uxp/components';
```

## Signature

```tsx
const SimpleConfigurationTable: React.MemoExoticComponent<React.FunctionComponent<SimpleTableProps | ISimpleConfigurationTableProps>>
```

## Examples

```tsx
// Row click with form panel for adding
<SimpleConfigurationTable
  columns={columns}
  data={items}
  onClickRow={(e, item) => navigate(item.id)}
  onClickAddNew={() => openFormPanel()}
  addButtonLabel="+ Add Role"
  search={{ fields: ['name'] }}
/>
```

```tsx
// Inline editing with add/update/delete
<SimpleConfigurationTable
  columns={columns}
  data={items}
  onAddItem={handleAdd}
  onUpdateItem={handleUpdate}
  onDeleteItem={handleDelete}
  search={{ fields: ['name'] }}
/>
```

```tsx
// Paginated data with row click (no add button)
<SimpleConfigurationTable
  columns={columns}
  data={(page, size, query) => fetchData(page, size, query)}
  total={totalCount}
  onClickRow={(e, item) => openDetails(item)}
  search={{ fields: ['name'] }}
/>
```

