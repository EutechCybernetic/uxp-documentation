# CheckboxList


A bordered list of choices with checkboxes, and an optional "Select all" row first.



## Installation

```tsx
import { CheckboxList } from 'uxp/components';
```

## Signature

```tsx
const CheckboxList: React.FunctionComponent<ICheckboxListProps>
```

## Examples

```tsx
<CheckboxList
  title="Linked dashboards"
  items={[{ id: 'db2', label: 'Single Dashboard', description: 'db2' }]}
  selected={picked}
  onChange={setPicked}
/>
```

## Live preview

[Open CheckboxList in the playground →](<https://story.uxp.iviva.com/?path=/docs/forms-checkboxlist--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|[ICheckboxListItem[]](../types/ICheckboxListItem.md)|Yes|-|[{ id: 'db2', label: 'Single Dashboard', description: 'db2', tag: { label: 'Rep…|
|selected|string[]|Yes|-|["db2"]|
|onChange|(selected: string[]) => void|Yes|-|-|
|title|string|No|-|"Linked dashboards"|
|showSelectAll|boolean|No|true|-|
|selectAllLabel|string|No|-|-|
|showCount|boolean|No|true|-|
|emptyText|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [ICheckboxListProps](../types/ICheckboxListProps.md)
- [ICheckboxListItem](../types/ICheckboxListItem.md)
- [ChipVariant](../types/ChipVariant.md)

