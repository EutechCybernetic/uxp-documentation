# ListDropdown


A small chip-like button that opens a scrollable list, for long lists that would clutter the page inline.



## Installation

```tsx
import { ListDropdown } from 'uxp/components';
```

## Signature

```tsx
const ListDropdown: React.FunctionComponent<IListDropdownProps>
```

## Examples

```tsx
<ListDropdown label="3 pages" items={['home-view', 'alarm-view', 'point-view']} />
```

## Live preview

[Open ListDropdown in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-listdropdown--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/data-display-listdropdown--docs&args=label%3A3+pages&props=%7B%22items%22%3A%5B%22home-view%22%2C%22alarm-view%22%2C%22point-view%22%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|label|string|Yes|-|"128 pages"|
|items|(string \| IListDropdownItem)[]|Yes|-|["iviva-ibms-app/dashboard-view", "iviva-ibms-app/equipment-view", "iviva-ibms-…|
|variant|[ChipVariant](../types/ChipVariant.md)|No|"secondary"|-|
|searchThreshold|number|No|10|-|
|className|string|No|-|-|

## Related Types

- [IListDropdownProps](../types/IListDropdownProps.md)
- [IListDropdownItem](../types/IListDropdownItem.md)
- [ChipVariant](../types/ChipVariant.md)

