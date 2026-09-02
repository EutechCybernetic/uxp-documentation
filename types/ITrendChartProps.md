# ITrendChartProps

## Definition

```tsx
interface ITrendChartProps {
    /**
     * The series to plot. More than one can be visualized.
     */
    data: ITrendSeries[],

    /**
     * Use this to render a custom tooltip that will appear when the user hovers over a data point.
     * The data being hovered over is passed as a parameter.
     *
     * @example
     * onShowTooltip={(data)=><div>{`Temperature: ${data.temp}`}</div>}
     */
    onShowTooltip?: (data: any) => JSX.Element

    /**
     * Called whenever a data point is clicked on. The data point being clicked on is passed as a parameter to the function
     */
    onClick?: (data: any) => JSX.Element

    /**
     * Show the legend. Defaults to `true`; turn off for single-series charts.
     */
    showLegend?: boolean

    /**
     * Format the X-axis tick text (the series `time` value).
     */
    formatXAxis?: (value: string) => string

    /**
     * Draw faint horizontal gridlines. Defaults to `false`.
     */
    showGrid?: boolean

    /**
     * Additional CSS classes for custom styling
     */
    className?: string
}
```

## Usage

```tsx
import { ITrendChartProps } from 'uxp/components';
```

## Related Types

- [ITrendSeries](../types/ITrendSeries.md)
- [ITrendSeriesType](../types/ITrendSeriesType.md)
- [ITrendData](../types/ITrendData.md)

