# DataTable




A infinite-scrollable list that supports paging in of items




## Installation



```tsx
import {DataTable} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|data|Array<any> \| IDataFunction|List of items to render. This can either be an array of objects or a function that will generate the array of objects. If you supply a function then pagination will be supported. The function expects 2 parameters - `max` and `last` and returns a promise that will resolve to the list of objects. `max` specifies the maximum number of items to be returned. |
|columns|IDataTableColumn[]|List of columns to render column contains three(3) params - title : column title. this can be either a string or a function that returns a jsx element - width : width of the column. this can a percentage (20%), fixed with (100px) or null - renderColumn : content of the column. this is a function that returns a jsx element. this function will take a single argument item type of any |
|pageSize|number|The number of items to fetch in each page. This gets passed to the data function as the `max` parameter |
|args|any||
|renderLoading|() => JSX.Element|This function renders a loading animation. If not specified, the default loading animation will be used. |
|className|string|Any extra class names to be added to the component |
|showFooter|boolean|show/hide footer (scroll buttons) |
|scrollStep|number|mun of rows to scroll |
|showEndOfContent|boolean|show/hide end of content message |
|onItemsLoad|(total: number, loaded: number) => void|this function will be called every time list get updated this will return total number of items (function should return the total count) and loaded items count |
|renderHeaders|boolean|this will toggle the headers default is true |
|onClickRow|(item: any) => void|callback function to trigger on click a table row |
|activeClass|string|active table row styles default is 'active' an has some styles if you give a class here it will be applied |
### data



---



List of items to render. This can either be an array of objects or a function that will generate the array of objects.
If you supply a function then pagination will be supported. The function expects 2 parameters - `max` and `last` and returns a promise that will resolve to the list of objects.
`max` specifies the maximum number of items to be returned.


|type|
|-|
|Array<any> \| IDataFunction|
### columns



---



List of columns to render
column contains three(3) params
 - title : column title. this can be either a string or a function that returns a jsx element
 - width : width of the column. this can a percentage (20%), fixed with (100px) or null
 - renderColumn : content of the column. this is a function that returns a jsx element. this function will take a single argument item type of any
 

|type|
|-|
|IDataTableColumn[]|


```tsx
renderColumn={(item,key)=><div>{'Item:' + JSON.stringify(item)}}</div>}
```



```tsx
columns= {[
 {
     title: "Request Id",
     width: "20%",
     render: (item) => <div>{item.requestId} </div>
 },
 {
     title: "User",
     width: "10%",
     render: (item) => <div>{item.user} </div>
 }
]}
```

### pageSize



---



The number of items to fetch in each page. This gets passed to the data function as the `max` parameter


|type|
|-|
|number|
### args



---





|type|
|-|
|any|
### renderLoading



---



This function renders a loading animation. If not specified, the default loading animation will be used.


|type|
|-|
|() => JSX.Element|
### className



---



Any extra class names to be added to the component


|type|
|-|
|string|
### showFooter



---



show/hide footer (scroll buttons)


|type|
|-|
|boolean|
### scrollStep



---



mun of rows to scroll


|type|
|-|
|number|
### showEndOfContent



---



show/hide end of content message


|type|
|-|
|boolean|
### onItemsLoad



---



this function will be called every time list get updated
this will return total number of items (function should return the total count) and loaded items count


|type|
|-|
|(total: number, loaded: number) => void|
### renderHeaders



---



this will toggle the headers
default is true


|type|
|-|
|boolean|
### onClickRow



---



callback function to trigger on click a table row


|type|
|-|
|(item: any) => void|
### activeClass



---



active table row styles
default is 'active' an has some styles
if you give a class here it will be applied


|type|
|-|
|string|
