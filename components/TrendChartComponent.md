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
        {
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
        }
    ]

 <TrendChartComponent
     data={TrendData}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|[ITrendSeries[]](../types/ITrendSeries.md)|Yes|-|-|
|onShowTooltip|(data: any) => JSX.Element|No|-|* onShowTooltip={(data)=><div>{`Temperature: ${data.temp}`}</div>}|
|onClick|(data: any) => JSX.Element|No|-|-|

## Related Types

- [ITrendChartProps](../types/ITrendChartProps.md)
- [ITrendSeries](../types/ITrendSeries.md)
- [ITrendSeriesType](../types/ITrendSeriesType.md)
- [ITrendData](../types/ITrendData.md)

