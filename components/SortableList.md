# SortableList




## Installation

```tsx
import { SortableList } from 'uxp/components';
```

## Signature

```tsx
const SortableList: React.FunctionComponent<ISortList>
```

## Live preview

[Open SortableList in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-lists-sortablelist--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|Array<any>|Yes|-|[ { id: 1, name: 'Chiller 01', location: 'Level 1' }, { id: 2, name: 'Chiller 0…|
|renderItem|(item: any, i: number) => JSX.Element|Yes|-|Name and location renderItem={(item, i) => <div>{item.name} · {item.location}</…|
|onSort|(list: any) => void|Yes|-|Log the order onSort={(list) => console.log('new order', list.map((x) => x.name…|
|disableSort|boolean|No|-|-|

## Related Types

- [ISortList](../types/ISortList.md)

