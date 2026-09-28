# ITrendChartProps

## Definition

```tsx
interface ITrendChartProps {
    /**
     * The series to plot. More than one can be visualized.
     * @example
     * [
     *   {
     *     type: 'area',
     *     unit: 'kWh',
     *     data: [
     *       { time: '2026-09-01', value: 420 },
     *       { time: '2026-09-02', value: 465 },
     *       { time: '2026-09-03', value: 398 },
     *       { time: '2026-09-04', value: 512 },
     *       { time: '2026-09-05', value: 488 },
     *       { time: '2026-09-06', value: 301 },
     *       { time: '2026-09-07', value: 276 },
     *     ],
     *   },
     *   {
     *     type: 'line',
     *     unit: '°C',
     *     data: [
     *       { time: '2026-09-01', value: 24.5 },
     *       { time: '2026-09-02', value: 25.1 },
     *       { time: '2026-09-03', value: 23.8 },
     *       { time: '2026-09-04', value: 26.2 },
     *       { time: '2026-09-05', value: 25.7 },
     *       { time: '2026-09-06', value: 22.9 },
     *       { time: '2026-09-07', value: 22.4 },
     *     ],
     *   },
     * ]
     */
    data: ITrendSeries[],

    /**
     * Use this to render a custom tooltip that will appear when the user hovers over a data point.
     * The data being hovered over is passed as a parameter.
     *
     * @example
     * onShowTooltip={(data) => data.active && data.payload?.length
     *     ? <div style={{ background: '#fff', padding: 8, border: '1px solid #ddd' }}>{data.label}: {data.payload[0].value}</div>
     *     : null}
     */
    onShowTooltip?: (data: any) => JSX.Element

    /**
     * Called whenever a data point is clicked on. The data point being clicked on is passed as a parameter to the function
     * @example Log the point
     * ```tsx
     * onClick={(data) => { console.log('clicked', data); return null; }}
     * ```
     */
    onClick?: (data: any) => JSX.Element

    /**
     * Show the legend. Defaults to `true`; turn off for single-series charts.
     * @default true
     */
    showLegend?: boolean

    /**
     * Format the X-axis tick text (the series `time` value).
     * @example Short date
     * ```tsx
     * formatXAxis={(value) => new Date(value).toLocaleDateString(undefined, { month: 'short', day: 'numeric' })}
     * ```
     */
    formatXAxis?: (value: string) => string

    /**
     * Draw faint horizontal gridlines. Defaults to `false`.
     * @default false
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

