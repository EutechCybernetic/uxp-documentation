# TabComponent




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

## Live preview

[Open TabComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/navigation-tabcomponent--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|tabs|[Tab[]](../types/Tab.md)|Yes|-|[ { id: 'overview', label: 'Overview' }, { id: 'alarms', label: 'Alarms' }, { i…|
|selected|string|Yes|-|"overview"|
|onChangeTab|(tab: string) => void|Yes|-|Log onChangeTab={(tab) => console.log('tab', tab)}|
|direction|'vertical' \| 'horizontal'|No|-|-|
|position|'top' \| 'bottom' \| 'left' \| 'right'|No|-|-|
|styles|[TabComponentStyles](../types/TabComponentStyles.md)|No|-|-|
|className|string|No|-|-|
|rightContent|React.ReactNode|No|-|-|

## Related Types

- [TabComponentProps](../types/TabComponentProps.md)
- [Tab](../types/Tab.md)
- [TabComponentStyles](../types/TabComponentStyles.md)

