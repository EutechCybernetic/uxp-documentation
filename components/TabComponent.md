# TabComponent

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-tabs-tabcomponent--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TabComponent live demo"
></iframe>





Tab layout component



## Installation

```tsx
import { TabComponent } from 'uxp/components';
```

## Signature

```tsx
const TabComponent: React.FunctionComponent<TabComponentProps>
```

## Examples

```tsx
<TabComponent
  tabs={[
     {id: 'general' , label:'General', content: <div> General Tab </div>},
     {id: 'advanced' , label:'Advanced', content: <div> Advanced Tab </div>},
  ]}
  selected={selectedTab}
  onChangeTab={setSelectedTab}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|tabs|[Tab[]](../types/Tab.md)|Yes|-|-|
|selected|string|Yes|-|-|
|onChangeTab|(tab: string) => void|Yes|-|-|
|direction|'vertical' \| 'horizontal'|No|-|-|
|position|'top' \| 'bottom' \| 'left' \| 'right'|No|-|-|
|styles|[TabComponentStyles](../types/TabComponentStyles.md)|No|-|-|
|className|string|No|-|-|
|rightContent|React.ReactNode|No|-|-|

## Related Types

- [TabComponentProps](../types/TabComponentProps.md)
- [Tab](../types/Tab.md)
- [TabComponentStyles](../types/TabComponentStyles.md)

