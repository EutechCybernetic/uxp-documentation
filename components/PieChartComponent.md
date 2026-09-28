# PieChartComponent


Display a pie chart visualization




## Installation

```tsx
import { PieChartComponent } from 'uxp/components';
```

## Signature

```tsx
const PieChartComponent: React.FunctionComponent<IPieChartProps>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=charts-piechartcomponent--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="PieChartComponent live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|[IDataItem[]](../types/IDataItem.md)|Yes|-|[ { name: 'HVAC', value: 45 }, { name: 'Lighting', value: 25 }, { name: 'Plug l…|
|fillColor|string|No|-|-|
|showLegend|boolean|No|false|true|
|innerRadius|number \| string|No|-|"60%"|
|showLabels|boolean|No|true|-|
|centerContent|React.ReactNode|No|-|-|
|className|string|No|-|-|

## Related Types

- [IPieChartProps](../types/IPieChartProps.md)
- [IDataItem](../types/IDataItem.md)

