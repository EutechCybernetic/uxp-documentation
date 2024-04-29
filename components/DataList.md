# DataList




A infinite-scrollable list that supports paging in of items







## Installation



```tsx
import {DataList} from 'uxp/components';
```

## Examples



```tsx
Using array

 let data:any[] = [
     {
         "id": 1,
         "name": "Name 01"
     },
     {
         "id": 2,
         "name": "Name 01"
     },
     {
         "id": 3,
         "name": "Name 01"
     }
 ]

 function renderItem(item:any, key:number) {
     return <div>
         <div>{item.name} </div>
     </div>
 }

 <DataList
     data={data}
     renderItem={(item, key) => renderItem(item, key)}
     pageSize={10}
 />
```



```tsx
Using IDataFunction
 async function getData(max:number, last: string, args: any) {
     if(!last) last = "0";

     return new Promise<{items:any[], pageToken: string}>((done, nope) =>{
         executeAction("model", "action", {max: max, last: last, args: args})
         .then(res => {
             done({items: res.data, pageToken: res.lastPageToken })
         })
         .catch(e => {
             done({items: [], pageToken: last})
         })
     })
 }

 function renderItem(item:any, key:number) {
     return <div>
         <div>{item.name} </div>
     </div>
 }

 <DataList
     data={(max, last, args) => getData(max, last, args)}
     renderItem={(item, key) => renderItem(item, key)}
     pageSize={10}
 />
```



```tsx
Using other props

 <DataList
     data={data}
     renderItem={(item, key) => renderItem(item, key)}
     pageSize={10}
     className="custom-css-class"
     showFooter={false}
     showEndOfContent={false}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|data|Array<any> \| IDataFunction|List of items to render. This can either be an array of objects or a function that will generate the array of objects. If you supply a function then pagination will be supported. The function expects 2 parameters - `max` and `last` and returns a promise that will resolve to the list of objects. `max` specifies the maximum number of items to be returned. |
|renderItem|(item: any, key: number) => JSX.Element|A function that will be responsible for rendering each individual element of the list. It is common to return `ItemCard` component from here. |
|pageSize|number|The number of items to fetch in each page. This gets passed to the data function as the `max` parameter |
|args|any||
|renderLoading|() => JSX.Element|This function renders a loading animation. If not specified, the default loading animation will be used. |
|className|string|Any extra class names to be added to the component |
|showFooter|boolean|show/hide footer (scroll buttons) |
|scrollStep|number|mun of rows to scroll |
|showEndOfContent|boolean|show/hide end of content message |
|onItemsLoad|(total: number, loaded: number) => void|this function will be called every time list get updated this will return total number of items (function should return the total count) and loaded items count |
|renderNoItems|() => JSX.Element||
### data



---



List of items to render. This can either be an array of objects or a function that will generate the array of objects.
If you supply a function then pagination will be supported. The function expects 2 parameters - `max` and `last` and returns a promise that will resolve to the list of objects.
`max` specifies the maximum number of items to be returned.


|type|
|-|
|Array<any> \| IDataFunction|
### renderItem



---



A function that will be responsible for rendering each individual element of the list.
It is common to return  `ItemCard` component from here.



|type|
|-|
|(item: any, key: number) => JSX.Element|


```tsx
renderItem={(item,key)=><div>{'Item:' + JSON.stringify(item)}}</div>}
```



```tsx
renderItem={(item,key)=><ItemCard data={item} titleField='Name' />}
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
### renderNoItems



---





|type|
|-|
|() => JSX.Element|
