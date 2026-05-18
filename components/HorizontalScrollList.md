# HorizontalScrollList

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-horizontalscrolllist--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="HorizontalScrollList live demo"
></iframe>


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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|any[]|Yes|-|-|
|renderItem|(item: any, key: number) => JSX.Element|Yes|-|-|
|scrollStep|number|No|-|-|
|className|string|No|-|-|
|infinite|boolean|No|-|-|
|autoScroll|{ enable: boolean, interval?: number // default 5000 (equals to 5s/5000ms) }|No|-|-|

## Related Types

- [IHSListProps](../types/IHSListProps.md)

