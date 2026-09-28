# DataList


A infinite-scrollable list that supports paging in of items







## Installation

```tsx
import { DataList } from 'uxp/components';
```

## Signature

```tsx
const DataList: React.MemoExoticComponent<React.ForwardRefExoticComponent<React.RefAttributes<IDataListInstanceProps> & IDataListProps>>
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

## Live preview

[Open DataList in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-lists-datalist--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|Array<any> \| IDataFunction|Yes|-|[ { id: 1, name: 'Chiller 01', location: 'Level 1' }, { id: 2, name: 'Chiller 0…|
|renderItem|(item: any, key: number) => JSX.Element|Yes|-|renderItem={(item,key)=><div>{'Item:' + JSON.stringify(item)}</div>}|
|pageSize|number|Yes|-|10|
|args|any|No|-|-|
|renderLoading|() => JSX.Element|No|-|-|
|className|string|No|-|-|
|showFooter|boolean|No|-|-|
|scrollStep|number|No|-|-|
|showEndOfContent|boolean|No|-|-|
|onItemsLoad|(total: number, loaded: number, items?: any[]) => void|No|-|-|
|renderNoItems|() => JSX.Element|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|updateItem|(key: number, item: any) => void|-|
|removeItem|(key: number) => void|-|

