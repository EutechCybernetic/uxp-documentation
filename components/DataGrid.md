# DataGrid





Used to show data in a matrix or grid. You can give it a list of items and a function to render those items.
Items get layed out in a grid and displayed.



## Installation



```tsx
import {DataGrid} from 'uxp/components';
```

## Examples



```tsx
let GridData = [
     {
         icon: "https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg",
         title: "Item Card",
         subTitle: "Item card with image/icon Item card with image/icon"
     },
     {
         icon: "",
         name: "Dinesh Gamage",
         title: "Item Card",
         subTitle: "Item card with name"
     },
     {
         icon: "https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg",
         title: "Item Card Title & Icon",
         subTitle: ""
     },
     {
         icon: "https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg",
         title: "",
         subTitle: "Item Card sub Title & Icon"
     },
     {
         title: "Item Card",
         subTitle: "Item card without image/icon"
     },
     {
         title: "Item Card Title only",
     },
     {
         subTitle: "Item card sub title only"
     },
     {
         icon: "https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg",
         title: "QR Code",
         subTitle: "scan your code"
     },
     {
         icon: "https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg",
     },
     null
 ]


 function renderGridItem(item: any, key: number){
     return (<ItemCard
         item={item}
         imageField="icon"
         titleField="title"
         subTitleField="subTitle"
         nameField="name"
     />)
 }

 <DataGrid
     data={GridData}
     renderItem={renderGridItem}
     columns={2}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|data|Array<any>|The items to render into a grid. This will be an array of any data. The data is passed into the render function and can be used there to render the actual grid cell. |
|renderItem|(item: any, key: number) => JSX.Element|A function which can be used to return the contents of each cell. The function will be passed 2 parameters: `item`: The individual item from the list of items passed as the `data` prop `key`: The index of the item in the list This function should return a react element |
|columns|number|The number of columns to display. Items will be layed out row by row and the number of columns in each row is specified here |
|className|string|Any additional css class names to include in the component |
### data



---



The items to render into a grid. This will be an array of any data.
The data is passed into the render function and can be used there to render the actual grid cell.



|type|
|-|
|Array<any>|
### renderItem



---



A function which can be used to return the contents of each cell. The function will be passed 2 parameters:

`item`: The individual item from the list of items passed as the `data` prop
`key`: The index of the item in the list

This function should return a react element



|type|
|-|
|(item: any, key: number) => JSX.Element|


```tsx
renderItem={(item:any,key:number)=> <div>{'Key Is ' + key}}</div>}
```

### columns



---



The number of columns to display. Items will be layed out row by row and the number of columns in each row is specified here


|type|
|-|
|number|
### className



---



Any additional css class names to include in the component


|type|
|-|
|string|
