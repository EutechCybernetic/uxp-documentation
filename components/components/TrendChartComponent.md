# TrendChartComponent



A component to show time series based trend or line visualizations





## Installation



```tsx
import {TrendChartComponent} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|data|ITrendSeries[]|The series to plot. More than one can be visualized. |
|onShowTooltip|(data: any) => JSX.Element|Use this to render a custom tooltip that will appear when the user hovers over a data point. The data being hovered over is passed as a parameter. |
|onClick|(data: any) => JSX.Element|Called whenever a data point is clicked on. The data point being clicked on is passed as a parameter to the function |
### data



---



The series to plot. More than one can be visualized.


|type|
|-|
|ITrendSeries[]|
### onShowTooltip



---



Use this to render a custom tooltip that will appear when the user hovers over a data point.
The data being hovered over is passed as a parameter.



|type|
|-|
|(data: any) => JSX.Element|


```tsx
onShowTooltip={(data)=><div>{`Temperature: ${data.temp}`}</div>}
```

### onClick



---



Called whenever a data point is clicked on. The data point being clicked on is passed as a parameter to the function


|type|
|-|
|(data: any) => JSX.Element|
