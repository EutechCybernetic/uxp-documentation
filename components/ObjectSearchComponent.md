# ObjectSearchComponent

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-tables-object-search-objectsearchcomponent--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ObjectSearchComponent live demo"
></iframe>



A component for searching, filtering, and displaying tabular data with support for pagination, views, and details panels.



## Installation

```tsx
import { ObjectSearchComponent } from 'uxp/components';
```

## Signature

```tsx
const ObjectSearchComponent: React.MemoExoticComponent<React.ForwardRefExoticComponent<React.RefAttributes<ObjectSearchComponentHandlers> & ObjectSearchComponentProps>>
```

## Examples

```tsx
<ObjectSearchComponent
  title="Users"
  data={[{ id: '1', name: 'John' }, { id: '2', name: 'Jane' }]}
  columns={[{ id: 'name', label: 'Name' }]}
  pageSize={10}
  total={2}
  idField="id"
/>
```

```tsx
<ObjectSearchComponent
  title="Users"
  data={async (page, pageSize, query, filters, sort) => {
    return { items: [{ id: '1', name: 'John' }] };
  }}
  columns={[{ id: 'name', label: 'Name', isSortable: true, exportLabel: 'User Name' }]}
  pageSize={10}
  total={async () => 100}
  idField="id"
  filters={{ formFields: [{ name: 'name', label: 'Name', type: 'text' }] }}
  views={{ listId: 'users', defaultViews: [{ id: 'default', name: 'Default View' }], allowToMangeCustomViews: true }}
  defaultActionColumns={{
    selectColumn: { enable: true },
    actionsColumn: { enable: true, headerActions: { sort: true, customiseColumns: true } }
  }}
  search={{ enable: true, fields: ['name'] }}
  detailsPanel={{ renderDetails: (id, onClose) => <div>Details for {id}</div> }}
  collapsedWidth="40%"
  appendToURL={true}
  onSelect={(selected) => console.log('Selected rows:', selected)}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| ReactNode|No|-|-|
|filters|[FilterConfig](../types/FilterConfig.md)|No|-|-|
|views|[ViewsConfig](../types/ViewsConfig.md)|No|-|-|
|data|RowData[] \| ((page: number, pageSize: number, query?: string, filters?: Filters, sort?: Sort) => Promise<{ items: RowData[] }>)|Yes|-|-|
|columns|[OSCColumn[]](../types/OSCColumn.md)|Yes|-|-|
|defaultActionColumns|[DefaultActionColumnsConfig](../types/DefaultActionColumnsConfig.md)|No|-|-|
|pageSize|number|Yes|-|-|
|total|number \| ((query?: string, filters?: Filters) => Promise<number>)|Yes|-|-|
|loading|boolean|No|-|-|
|noItemsMessage|string \| ReactNode|No|-|-|
|minCellWidth|number|No|-|-|
|onClickRow|(e: MouseEvent<HTMLDivElement>, item: any) => void|No|-|-|
|detailsPanel|DefaultDetailsPanelProps \| CustomDetailsPanelProps|No|-|-|
|idField|string|Yes|-|-|
|nameField|string|No|-|-|
|typeField|string|No|-|-|
|actionButtons|ReactNode|No|-|-|
|bulkActionButtons|ReactNode|No|-|-|
|selected|[RowData[]](../types/RowData.md)|No|-|-|
|onSelect|(selected: RowData[]) => void|No|-|-|
|renderChildren|(childRows: RowData[], rowProps: TableRowBasicProps) => ReactNode|No|-|-|
|renderCell|(row: RowData, column: ExtendedOSCColumn) => ReactNode|No|-|-|
|summaryContent|ReactNode|No|-|-|
|search|{ /** * Enables the search box. */ enable: boolean; /** * Fields in the data to use for text search (required for static data arrays). */ fields?: string[]; /** * If true, collapses the search box by default. */ collapsed?: boolean; }|No|-|-|
|collapsedWidth|string \| number|No|-|-|
|appendToURL|boolean|No|-|-|
|clearParamsOnSelect|string[]|No|-|-|
|allowPageSizeChange|boolean|No|-|-|
|urlParams|[URLParamConfig](../types/URLParamConfig.md)|No|-|-|
|className|string|No|-|-|
|onFilterPanelToggle|(isOpen: boolean) => void|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|export|() => Promise<void>|Triggers export of the current view's data. Resolves when the export finishes so the caller can reflect an in-progress/loading state. |
|getDetails|() => ObjectSearchDetailsResponse|Retrieves details of the current search state. |
|refreshCurrentPage|() => void|Refreshes current page data with loading state shown. |
|silentRefreshCurrentPage|() => void|Refreshes current page data silently, without showing the loading state. |
|setPageData|(items: RowData[]) => void|Directly replaces the current page data with the provided array. No fetch is triggered. |
|getCurrentPageData|() => RowData[]|Returns the current page data (the visible rows). |
|getFilters|() => Filters|Returns the currently applied filters. |
|applyFilters|(filters: Filters) => void|Sets filters programmatically. Must be a valid SimpleFilter: { filters: Record<string, any> }. Invalid input is ignored. |
|isFilterPanelOpen|() => boolean|Returns whether the filter panel is currently open. |

