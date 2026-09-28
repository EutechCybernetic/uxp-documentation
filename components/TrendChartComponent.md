# TrendChartComponent

A component to show time series based trend or line visualizations





## Installation

```tsx
import { TrendChartComponent } from 'uxp/components';
```

## Signature

```tsx
const TrendChartComponent: React.FunctionComponent<ITrendChartProps>
```

## Examples

```tsx
const TrendData: ITrendSeries[] = [
     {
         unit: "A",
         lineColor: "#ff7300",
            data: [
                { time: "2020/07/20", value: 200 },
                { time: "2020/08/20", value: 100 },
                { time: "2020/09/20", value: 50 },
                { time: "2020/10/20", value: 300 },
                { time: "2020/11/20", value: 700 },
                { time: "2020/12/20", value: 90 }
            ],
            type: "line"
        },
        
            unit: "B",
            lineColor: "#413ea0",
            fillColor: "#8884d8",
            data: [
                { time: "2014/06/21", value: 50 },
                { time: "2020/07/20", value: 50 },
                { time: "2020/08/20", value: 30 },
                { time: "2020/09/20", value: 90 },
                { time: "2020/10/20", value: 300 },
                { time: "2020/11/20", value: 100 },
                { time: "2020/12/20", value: 90 }
            ],
            type: "area"
        
    

 <TrendChartComponent
     data={TrendData}
 />
```

## Live preview

[Open TrendChartComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/charts-trendchartcomponent--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|[ITrendSeries[]](../types/ITrendSeries.md)|Yes|-|[ { type: 'area', unit: 'kWh', data: [ { time: '2026-09-01', value: 420 }, { ti…|
|onShowTooltip|(data: any) => JSX.Element|No|-|onShowTooltip={(data) => data.active && data.payload?.length ? <div style={{ ba…|
|onClick|(data: any) => JSX.Element|No|-|Log the point onClick={(data) => { console.log('clicked', data); return null; }}|
|showLegend|boolean|No|true|-|
|formatXAxis|(value: string) => string|No|-|Short date formatXAxis={(value) => new Date(value).toLocaleDateString(undefined…|
|showGrid|boolean|No|false|-|
|className|string|No|-|-|

## Related Types

- [ITrendChartProps](../types/ITrendChartProps.md)
- [ITrendSeries](../types/ITrendSeries.md)
- [ITrendSeriesType](../types/ITrendSeriesType.md)
- [ITrendData](../types/ITrendData.md)

