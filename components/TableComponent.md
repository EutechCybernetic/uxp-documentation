# TableComponent

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-tables-tablecomponent--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TableComponent live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|RowData[] \| ((page: number, pageSize: number, query?: string, filters?: Filters) => Promise<{ items: RowData[] }>)|Yes|-|-|
|columns|[TableColumn[]](../types/TableColumn.md)|Yes|-|-|
|pageSize|number|Yes|-|-|
|total|number \| ((query?: string, filters?: Filters) => Promise<number>)|Yes|-|-|
|loading|boolean|No|-|-|
|noItemsMessage|string \| React.ReactNode|No|-|-|
|editColumn|{ enable: boolean; label?: string; renderColumn?: (item: RowData) => React.ReactNode; onEdit?: (item: RowData) => void; }|No|-|-|
|deleteColumn|{ enable: boolean; label?: string; renderColumn?: (item: RowData) => React.ReactNode; onDelete?: (item: RowData) => Promise<void>; }|No|-|-|
|minCellWidth|number|No|-|-|
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
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)

