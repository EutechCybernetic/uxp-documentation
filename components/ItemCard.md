# ItemCard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-itemcard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemCard live demo"
></iframe>


This component is used to render some item in a standard card form.
This includes a profile pic, a title, a subtitle and a list of fields and values.




## Installation

```tsx
import { ItemCard } from 'uxp/components';
```

## Signature

```tsx
const ItemCard: React.FunctionComponent<IItemCardProps>
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

#### *

```tsx
<ItemCard
     image="https://avatars.dicebear.com/api/male/john.svg?background=%230000ff"
     title="John Doe"
     className="data-table-item"
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|item|any|No|-|-|
|imageField|string|No|-|-|
|titleField|string|No|-|-|
|subTitleField|string|No|-|-|
|nameField|string|No|-|-|
|className|string|No|-|-|
|image|string|No|-|-|
|name|string|No|-|-|
|title|string|No|-|-|
|subTitle|string|No|-|-|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|

## Related Types

- [IItemCardProps](../types/IItemCardProps.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)

