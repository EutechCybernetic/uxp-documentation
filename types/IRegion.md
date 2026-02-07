# IRegion


Region overlay for maps (polygon, rectangle, or circle)


## Definition

```tsx
export interface IRegion {
    /**
     * region type,
     * default is polygon
     */
    type?: regionType,
    /**
     * region bounds
     */
    bounds: IPolygonBound | ICircleBound,
    /**
     * show/hide outline of the region
     */
    hideStroke?: boolean,
    /**
     * outline color
     */
    color?: string,
    /**
     * fill color
     */
    fillColor?: string,
    /**
     * any data to return on click a region
     */
    data?: any,
    /**
     * use image coordinates to calculate bounds
     */
    imageCoordinates?: boolean,
    /**
     * A tooltip to be shown when you click on the region
     */
    tooltipContent?: (data: any) => JSX.Element;
}
```

## Usage

```tsx
import { IRegion } from 'uxp/components';
```

## Examples

```tsx
tsx
{
  type: 'polygon',
  bounds: [[1.29, 103.85], [1.30, 103.86], [1.31, 103.87]],
  color: 'blue',
  fillColor: 'lightblue',
  data: { name: 'Central Area' },
  tooltipContent: (data) => <div>{data.name}</div>
}
```

## Related Types

- [IPolygonBound](../types/IPolygonBound.md)
- [ICircleBound](../types/ICircleBound.md)

