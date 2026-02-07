# IPieChartProps

## Definition

```tsx
interface IPieChartProps {
    /**
     * A list of items that the pie chart is comprised of
     */
    data: IDataItem[],

    /**
     * TODO
     */
    fillColor: string,

    /**
     * Set to `true` to show the chart legend
     */
    showLegend?: boolean
}
```

## Usage

```tsx
import { IPieChartProps } from 'uxp/components';
```

## Related Types

- [IDataItem](../types/IDataItem.md)

