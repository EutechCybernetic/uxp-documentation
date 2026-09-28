# HorizontalScrollList

This widget will create a horizontal scroll-able list



## Installation

```tsx
import { HorizontalScrollList } from 'uxp/components';
```

## Signature

```tsx
const HorizontalScrollList: React.FunctionComponent<IHSListProps>
```

## Examples

```tsx
<HorizontalScrollList
     items={[...Array(15).keys()]}
     renderItem={(item, key) => {
     return (<div className="item-thumbnail">
             {key}
         </div>)
     }}
 />
```

## Live preview

[Open HorizontalScrollList in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-lists-horizontalscrolllist--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|any[]|Yes|-|[ { id: 1, name: 'Chiller 01', location: 'Level 1' }, { id: 2, name: 'Chiller 0…|
|renderItem|(item: any, key: number) => JSX.Element|Yes|-|Item card renderItem={(item, key) => <div key={key} style={{ width: 220 }}><Ite…|
|scrollStep|number|No|-|-|
|className|string|No|-|-|
|infinite|boolean|No|-|-|
|autoScroll|{ enable: boolean, interval?: number // default 5000 (equals to 5s/5000ms) }|No|-|-|

## Related Types

- [IHSListProps](../types/IHSListProps.md)

