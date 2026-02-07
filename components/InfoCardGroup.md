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

```tsx
Basic usage:
```
<InfoCardGroup
  items={[
    { avatar: 'https://example.com/1.jpg', name: 'John Doe', email: 'john@example.com' },
    { avatar: 'https://example.com/2.jpg', name: 'Jane Smith', email: 'jane@example.com' },
  ]}
  fields={{ image: 'avatar', name: 'name', title: 'name', subtitle: 'email' }}
  maxVisible={3}
/>
```

```tsx
With details:
```
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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|any[]|Yes|-|-|
|fields|[InfoCardFields](../types/InfoCardFields.md)|No|-|-|
|details|[InfoCardDetailsContent](../types/InfoCardDetailsContent.md)|No|-|-|
|maxVisible|number|No|-|-|
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

