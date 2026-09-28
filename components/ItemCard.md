# ItemCard

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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-itemcard--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemCard live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-itemcard--default&amp;viewMode=story&amp;args=titleField%3Arequest%3BsubTitleField%3Adate%3BclassName%3Adata-table-item%3Bname%3A%21undefined%3Btitle%3A%21undefined%3BsubTitle%3A%21undefined&amp;props=%7B%22item%22%3A%7B%22request%22%3A%22AC+Extension+request+%2336%22%2C%22user%22%3A%22Johnson+%26+Johnson%22%2C%22section%22%3A%22Parking+1%22%2C%22status%22%3A%22approved%22%2C%22date%22%3A%2223%2F0702020%22%7D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemCard: Example 1"
></iframe>

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-itemcard--default&amp;viewMode=story&amp;args=imageField%3Aimage%3BtitleField%3Aname%3BclassName%3Adata-table-item%3Bname%3A%21undefined%3Btitle%3A%21undefined%3BsubTitle%3A%21undefined&amp;props=%7B%22item%22%3A%7B%22id%22%3A%221%22%2C%22image%22%3A%22https%3A%2F%2Favatars.dicebear.com%2Fapi%2Fmale%2Fjohn.svg%3Fbackground%3D%25230000ff%22%2C%22name%22%3A%22John+Doe%22%7D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemCard: Example 2"
></iframe>

#### Example 3

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-itemcard--default&amp;viewMode=story&amp;args=title%3AJohn+Doe%3BclassName%3Adata-table-item%3Bname%3A%21undefined%3BsubTitle%3A%21undefined&amp;props=%7B%22image%22%3A%22https%3A%2F%2Favatars.dicebear.com%2Fapi%2Fmale%2Fjohn.svg%3Fbackground%3D%25230000ff%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemCard: Example 3"
></iframe>

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
|name|string|No|-|"Chiller 01"|
|title|string|No|-|"Chiller 01"|
|subTitle|string|No|-|"Level 1 · Plant room"|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|

## Related Types

- [IItemCardProps](../types/IItemCardProps.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)

