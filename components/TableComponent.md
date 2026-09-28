# TableComponent


TableComponent displays tabular data with optional pagination, search, filters,
action buttons, edit/delete actions, and inline editing mode.



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
// With search, filters and action buttons
<TableComponent
  data={items}
  columns={columns}
  pageSize={10}
  total={items.length}
  search={{ enable: true, fields: ['name'] }}
  filters={{ formFields: [{ title: '', columns: 1, fields: [{ name: 'status', label: 'Status', type: 'text' }] }] }}
  actionButtons={<Button title="Add" onClick={handleAdd} />}
/>
```

## Live preview

[Open TableComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-tables-tablecomponent--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/data-display-tables-tablecomponent--docs&args=pageSize%3A10%3Btotal%3A1&props=%7B%22data%22%3A%5B%7B%22id%22%3A1%2C%22name%22%3A%22Item+1%22%7D%5D%2C%22columns%22%3A%5B%7B%22id%22%3A%22name%22%2C%22label%22%3A%22Name%22%7D%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|RowData[] \| ((page: number, pageSize: number, query?: string, filters?: Filters) => Promise<{ items: RowData[] }>)|Yes|-|[ { id: 1, name: 'Chiller 01', status: 'Running', location: 'Level 1' }, { id: …|
|columns|[TableColumn[]](../types/TableColumn.md)|Yes|-|[ { id: 'name', label: 'Name' }, { id: 'status', label: 'Status' }, { id: 'loca…|
|pageSize|number|Yes|-|5|
|total|number \| ((query?: string, filters?: Filters) => Promise<number>)|Yes|-|7|
|loading|boolean|No|-|-|
|noItemsMessage|string \| React.ReactNode|No|-|-|
|editColumn|{ enable: boolean; label?: string; renderColumn?: (item: RowData) => React.ReactNode; onEdit?: (item: RowData) => void; }|No|-|-|
|deleteColumn|{ enable: boolean; label?: string; renderColumn?: (item: RowData) => React.ReactNode; onDelete?: (item: RowData) => Promise<void>; }|No|-|-|
|expandColumn|{ enable: boolean; label?: string; width?: number }|No|-|-|
|minCellWidth|number|No|100|-|
|onClickRow|(e: React.MouseEvent<HTMLDivElement>, item: RowData) => void|No|-|-|
|onClickColumn|(e: React.MouseEvent<HTMLDivElement>, item: RowData, column: TableColumn) => void|No|-|-|
|disablePagination|boolean|No|-|-|
|editable|[EditableConfig](../types/EditableConfig.md)|No|-|-|
|search|{ enable: boolean; /** Fields to search (required for static array data) */ fields?: string[]; }|No|-|-|
|filters|[FilterConfig](../types/FilterConfig.md)|No|-|-|
|actionButtons|ReactNode|No|-|-|
|addNewRow|ReactNode|No|-|-|

## Related Types

- [TableComponentProps](../types/TableComponentProps.md)
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
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)

