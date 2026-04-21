# ITrendSeries

A single time series line


## Definition

```tsx
interface ITrendSeries {
    /**
     * Determines whether to visualize the trend as a line or an area plot
     */
    type: ITrendSeriesType

    /**
     * Any units associated with this metric. This is shown on the Y-Axis. This is also used to group Y-Axis'
     * So if a trend chart has multiple series, all of them which share the same unit will use the same Y-Axis
     */
    unit: string,

    /**
     * The color to show the line. If not provided, theme chart colors will be used automatically.
     */
    lineColor?: string,

    /**
     * If the type of chart is an area chart - this would be the color of the fill area.
     * If not provided, theme chart colors will be used automatically.
     */
    fillColor?: string,

    /**
     * The actual array of data points to plot
     */
    data: ITrendData[]
}
```

## Usage

```tsx
import { ITrendSeries } from 'uxp/components';
```

## Related Types

- [ITrendSeriesType](../types/ITrendSeriesType.md)
- [ITrendData](../types/ITrendData.md)

