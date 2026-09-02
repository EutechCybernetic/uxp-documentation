# DataGrid

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-datagrid--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DataGrid live demo"
></iframe>




Used to show data in a matrix or grid. You can give it a list of items and a function to render those items.
Items get layed out in a grid and displayed.



## Installation

```tsx
import { DataGrid } from 'uxp/components';
```

## Signature

```tsx
const DataGrid: React.FunctionComponent<IDataGridProps>
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

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|Array<any>|Yes|-|-|
|renderItem|(item: any, key: number) => JSX.Element|Yes|-|*|
|columns|number|Yes|-|-|
|borders|'cells' \| 'dividers' \| 'none'|No|-|-|
|className|string|No|-|-|

## Related Types

- [IDataGridProps](../types/IDataGridProps.md)

