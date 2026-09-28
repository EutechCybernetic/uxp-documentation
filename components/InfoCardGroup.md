# InfoCardGroup


A component that displays a group of profile images stacked horizontally with overlap.
Shows a "+N" badge for remaining items when maxVisible limit is reached.
Clicking opens a dropdown with full ItemCards, which can be clicked for detailed info.

This is a **display-only** component. For editable/input mode, use InfoCardGroupInput.



## Installation

```tsx
import { InfoCardGroup } from 'uxp/components';
```

## Signature

```tsx
const InfoCardGroup: React.FunctionComponent<InfoCardGroupProps>
```

## Examples

#### Basic usage

```tsx
<InfoCardGroup
  items={[
    { avatar: 'https://example.com/1.jpg', name: 'John Doe', email: 'john@example.com' },
    { avatar: 'https://example.com/2.jpg', name: 'Jane Smith', email: 'jane@example.com' },
  ]}
  fields={{ image: 'avatar', name: 'name', title: 'name', subtitle: 'email' }}
  maxVisible={3}
/>
```

#### With details

```tsx
<InfoCardGroup
  items={users}
  fields={{ image: 'avatar', name: 'name', title: 'name', subtitle: 'email' }}
  details={(item) => ({
    fields: [
      { label: 'Department', value: item.department },
      { label: 'Phone', value: item.phone }
    ]
  })}
  maxVisible={4}
  size="medium"
  shape="circle"
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-infocardgroup--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="InfoCardGroup live preview"
></iframe>

### Variants

#### Basic usage:

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-infocardgroup--default&amp;viewMode=story&amp;args=maxVisible%3A3&amp;props=%7B%22items%22%3A%5B%7B%22avatar%22%3A%22https%3A%2F%2Fexample.com%2F1.jpg%22%2C%22name%22%3A%22John+Doe%22%2C%22email%22%3A%22john%40example.com%22%7D%2C%7B%22avatar%22%3A%22https%3A%2F%2Fexample.com%2F2.jpg%22%2C%22name%22%3A%22Jane+Smith%22%2C%22email%22%3A%22jane%40example.com%22%7D%5D%2C%22fields%22%3A%7B%22image%22%3A%22avatar%22%2C%22name%22%3A%22name%22%2C%22title%22%3A%22name%22%2C%22subtitle%22%3A%22email%22%7D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="InfoCardGroup: Basic usage:"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|any[]|Yes|-|[ { name: 'Alex Morgan', email: 'alex.morgan@example.com' }, { name: 'Priya Nai…|
|fields|[InfoCardFields](../types/InfoCardFields.md)|No|-|{ name: 'name', title: 'name', subtitle: 'email' }|
|details|[InfoCardDetailsContent](../types/InfoCardDetailsContent.md)|No|-|-|
|maxVisible|number|No|-|3|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|
|dropdownPosition|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|

## Related Types

- [InfoCardGroupProps](../types/InfoCardGroupProps.md)
- [InfoCardFields](../types/InfoCardFields.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

