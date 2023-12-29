# HorizontalScrollList



This widget will create a horizontal scroll-able list



## Installation



```tsx
import {HorizontalScrollList} from 'uxp/components';
```

## Examples



```tsx
<HorizontalScrollList
     items={[...Array(15).keys()]}
     renderItem={(item, key) => {
     return (<div className="item-thumbnail">
             {key}
         </div>)
     }}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|items|any[]|Array of items |
|renderItem|(item: any, key: number) => JSX.Element|render method for an item given above |
|scrollStep|number|number of items to scroll when click on controller buttons |
|className|string|additional css class names |
### items



---



Array of items


|type|
|-|
|any[]|
### renderItem



---



render method for an item given above


|type|
|-|
|(item: any, key: number) => JSX.Element|
### scrollStep



---



number of items to scroll when click on controller buttons


|type|
|-|
|number|
### className



---



additional css class names


|type|
|-|
|string|
