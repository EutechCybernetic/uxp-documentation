# Working with Lists

One of the common requirements in widgets is to be able to show a list of items.

There are several ways in which lists can be displayed within the Experience Portal.

How you choose to display them depends on the nature of the data, how much data there is, and how users intend to use them.


## Large lists of objects of the same type

This is a common scenario where you need to show many items in a list. 

For example:

1. A list of requests made by a user
2. An audit trail of incidents that have occurred

There can be many items and there will usually be a filter UI to filter down data based on the selected criteria (creation date, assigned user, etc...)

For these use cases, a [Data List](components/DataList) can be used.

Data Lists can load either a fixed list of items or can asynchronously load data from Lucy and can paginate over results so more items are fetched as you scroll down the list.

Using fixed list of items 

```tsx

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

Load data from Lucy asynchronously
```tsx
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



## A limited number of items of different types.

Sometimes we need to show different types of data. For this we can ues a [Data Grid](components/DataGrid).


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

