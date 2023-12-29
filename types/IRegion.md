# IRegion




Region data for maps




```tsx
interface IRegion {
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
import {IRegion} from 'uxp/components';
```

