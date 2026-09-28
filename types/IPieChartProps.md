# IPieChartProps

## Definition

```tsx
interface IPieChartProps {
    /**
     * A list of items that the pie chart is comprised of
     * @example
     * [
     *   { name: 'HVAC', value: 45 },
     *   { name: 'Lighting', value: 25 },
     *   { name: 'Plug loads', value: 18 },
     *   { name: 'Other', value: 12 },
     * ]
     */
    data: IDataItem[],

    /**
     * Default fill color for pie slices. If not provided, theme chart colors will be used.
     * Individual items can override this with their own color property.
     */
    fillColor?: string,

    /**
     * Set to `true` to show the chart legend
     * @default false
     * @example true
     */
    showLegend?: boolean,

    /**
     * Inner radius for a donut: a number (px) or a percentage string such as `"67%"`. Omit for a solid pie.
     * @example "60%"
     */
    innerRadius?: number | string,

    /**
     * Show the value label on each slice. Defaults to `true`.
     * @default true
     */
    showLabels?: boolean,

    /**
     * Content rendered centred over the chart (e.g. a total for a donut).
     */
    centerContent?: React.ReactNode,

    /**
     * Additional CSS classes for custom styling
     */
    className?: string
}
```

## Usage

```tsx
import { IPieChartProps } from 'uxp/components';
```

## Related Types

- [IDataItem](../types/IDataItem.md)

