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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-lists-horizontalscrolllist--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="HorizontalScrollList live preview"
></iframe>

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

