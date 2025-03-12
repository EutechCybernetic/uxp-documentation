# TableComponent





Table component with pagination



## Installation



```tsx
import {TableComponent} from 'uxp/components';
```

## Examples



```tsx
const data = [
  {RegNo: 1, Name: 'Jane',...}
  {RegNo: 2, Name: 'John',...}
  {RegNo: 3, Name: 'Andy',...}
]

 <TableComponent
  data={data}
  columns={[ {id: 'RegNo', label: 'Registration Number' }, {id: 'Name', label: 'User Name'}  ]}
  pageSize={10}
  total={25}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|data|any[] \| ((page: number, pageSize: number) => Promise<{ items: any[] }>)|data for the table can pass a plat list of data or a function that will support pagination |
|columns|Column[]|columns definitions |
|pageSize|number|initial page size , can be change from the pagination component |
|total|number \| (() => Promise<number>)|total number of records |
|loading|boolean|loading state if require |
|noItemsMessage|string \| React.ReactNode|messge to show when no items found |
|editColumn|{ enable: boolean, label?: string, renderColumn?: (item: any) => React.ReactNode, onEdit?: (item: any) => void, }|this adds a edit column in to the table |
|deleteColumn|{ enable: boolean, label?: string, renderColumn?: (item: any) => React.ReactNode, onDelete?: (item: any) => Promise<void>, }|this adds a edit column in to the table |
|minCellWidth|number||
|onClickRow|(e: React.MouseEvent<HTMLDivElement>, item: any) => void||
|onClickColumn|(e: React.MouseEvent<HTMLDivElement>, item: any, column: Column) => void||


### data



---



data for the table
can pass a plat list of data or a function that will support pagination


|type|
|-|
|any[] \| ((page: number, pageSize: number) => Promise<{ items: any[] }>)|


### columns



---



columns definitions


|type|
|-|
|Column[]|


### pageSize



---



initial page size , can be change from the pagination component


|type|
|-|
|number|


### total



---



total number of records


|type|
|-|
|number \| (() => Promise<number>)|


### loading



---



loading state if require


|type|
|-|
|boolean|


### noItemsMessage



---



messge to show when no items found


|type|
|-|
|string \| React.ReactNode|


### editColumn



---



this adds a edit column in to the table


|type|
|-|
|{ enable: boolean, label?: string, renderColumn?: (item: any) => React.ReactNode, onEdit?: (item: any) => void, }|


### deleteColumn



---



this adds a edit column in to the table



|type|
|-|
|{ enable: boolean, label?: string, renderColumn?: (item: any) => React.ReactNode, onDelete?: (item: any) => Promise<void>, }|


### minCellWidth



---





|type|
|-|
|number|


### onClickRow



---





|type|
|-|
|(e: React.MouseEvent<HTMLDivElement>, item: any) => void|


### onClickColumn



---





|type|
|-|
|(e: React.MouseEvent<HTMLDivElement>, item: any, column: Column) => void|


