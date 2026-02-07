# DataTable


A infinite-scrollable list that supports paging in of items




## Installation

```tsx
import { DataTable } from 'uxp/components';
```

## Signature

```tsx
const DataTable: React.FunctionComponent<IDataTableProps>
```

## Examples

```tsx
<DataTable
     data={(max, last) => getDataItems(max, last)}
     pageSize={10}
     columns={[
         {
             title: "Request",
             width: "30%",
             renderColumn: (item) => <ItemCard
                 item={item}
                 subTitleField="request"
                 className="data-table-item"
             />
         },
         {
             title: "User",
             width: "25%",
             renderColumn: (item) => <ItemCard
                 item={item}
                 subTitleField="user"
                 className="data-table-item"
             />
         },
         {
             title: "Zone",
             width: "15%",
             renderColumn: (item) => <ItemCard
                 item={item}
                 subTitleField="section"
                 className="data-table-item"
             />
         },
         {
             title: "Status",
             width: "15%",
             renderColumn: (item) => <ItemCard
                 item={item}
                 subTitleField="status"
                 className="data-table-item"
             />
         },
         {
             title: "Date",
             width: "15%",
             renderColumn: (item) => <ItemCard
                 item={item}
                 subTitleField="date"
                 className="data-table-item"
             />
         }
     ]}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|Array<any> \| IDataFunction|Yes|-|-|
|columns|[IDataTableColumn[]](../types/IDataTableColumn.md)|Yes|-|*|
|pageSize|number|Yes|-|-|
|args|any|No|-|-|
|renderLoading|() => JSX.Element|No|-|-|
|className|string|No|-|-|
|showFooter|boolean|No|-|-|
|scrollStep|number|No|-|-|
|showEndOfContent|boolean|No|-|-|
|onItemsLoad|(total: number, loaded: number) => void|No|-|-|
|renderHeaders|boolean|No|-|-|
|onClickRow|(item: any) => void|No|-|-|
|activeClass|string|No|-|-|

## Related Types

- [IDataTableProps](../types/IDataTableProps.md)
- [IDataFunction](../types/IDataFunction.md)
- [IDataTableColumn](../types/IDataTableColumn.md)
- [ITitleFunc](../types/ITitleFunc.md)

