# TabComponent






Tab layout component



## Installation



```tsx
import {TabComponent} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|tabs|Tab[]|tabs |
|selected|string|selected tab id |
|onChangeTab|(tab: string) => void|on change tab |
|direction|'vertical' \| 'horizontal'|direction of tabs |
|position|'top' \| 'bottom' \| 'left' \| 'right'|position of tabs |
|styles|[TabComponentStyles](../types/TabComponentStyles.md)|tab component styles |


### tabs



---



tabs


|type|
|-|
|Tab[]|


### selected



---



selected tab id


|type|
|-|
|string|


### onChangeTab



---



on change tab


|type|
|-|
|(tab: string) => void|


### direction



---



direction of tabs


|type|
|-|
|'vertical' \| 'horizontal'|


### position



---



position of tabs


|type|
|-|
|'top' \| 'bottom' \| 'left' \| 'right'|


### styles



---



tab component styles


|type|
|-|
|[TabComponentStyles](../types/TabComponentStyles.md)|


