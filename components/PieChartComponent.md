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

[Open PieChartComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/charts-piechartcomponent--docs>)

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

