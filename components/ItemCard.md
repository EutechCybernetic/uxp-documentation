# ItemCard



This component is used to render some item in a standard card form.
This includes a profile pic, a title, a subtitle and a list of fields and values.




## Installation



```tsx
import {ItemCard} from 'uxp/components';
```

## Examples



```tsx
<ItemCard
     item={{
         request: "AC Extension request #36",
         user: "Johnson & Johnson",
         section: "Parking 1",
         status: "approved",
         date: "23/0702020"
     }}
     titleField="request"
     subTitleField="date"
     className="data-table-item"
 />
```



```tsx
<ItemCard
     item={{
         id: "1",
         image: "https://avatars.dicebear.com/api/male/john.svg?background=%230000ff"
         name: "John Doe",
     }}
     imageField="image"
     titleField="name"
     className="data-table-item"
 />
```

*
```



```tsx
<ItemCard
     image="https://avatars.dicebear.com/api/male/john.svg?background=%230000ff"
     title="John Doe"
     className="data-table-item"
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|item|any|A reference to the data to be rendered as a card. |
|imageField|string|The name of the field within the `item` that has the url of an image to be shown |
|titleField|string|The name of the field within `item` that has the title of the object |
|subTitleField|string|The name of the field within 'item' that holds the subtitle of the object |
|nameField|string|This name of the field within `item` that contains any 'name' associated with the object. This property is used only if the imageField value is not set. The name is abbreviated and set as the profile image. |
|className|string|Any extra css classes to biind to the card. |
|image|string|These parameres will enable option to pass a value for each fields inseat of the field name. Using these, users/developers will be able to provide static values |
|name|string||
|title|string||
|subTitle|string||
### item



---



A reference to the data to be rendered as a card.


|type|
|-|
|any|
### imageField



---



The name of the field within the `item` that has the url of an image to be shown


|type|
|-|
|string|
### titleField



---



The name of the field within `item` that has the title of the object


|type|
|-|
|string|
### subTitleField



---



The name of the field within 'item' that holds the subtitle of the object


|type|
|-|
|string|
### nameField



---



This name of the field within `item` that contains any 'name' associated with the object.
This property is used only if the imageField value is not set. The name is abbreviated and set as the profile image.


|type|
|-|
|string|
### className



---



Any extra css classes to biind to the card.


|type|
|-|
|string|
### image



---



These parameres will enable option to pass a value for each fields inseat of the field name.
Using these, users/developers will be able to provide static values


|type|
|-|
|string|
### name



---





|type|
|-|
|string|
### title



---





|type|
|-|
|string|
### subTitle



---





|type|
|-|
|string|
