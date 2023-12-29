# IHeatmapConfiguration








```tsx
interface IHeatmapConfiguration {
    /**
     * The values to show on the heatmap. Each value has a coordinate and an intensity.
     * Intensities are relative the heatmap colors will be scaled based on the min/max intensities in the array
     * 
     * @example
     * ```
     * heatmap={{values:[{latitude:2.3,longitude:-38.6,intensity:20},{latitude:2.4,longitude:-38.6,intensity:20},]}}
     * ```
     */
    values: IHeatmapPoint[];

    /**
     * Optionally - a gradient specified as an object of floating point values as keys from 0-1 and colors as the values
     * 
     * @example
     * ```
     * heatmap={{values,gradient:{0.0:'blue',0.4:'yellow',0.7:'orange',0.9:'red'}}}
     * ```
     */
    gradient?: { [stop: number]: string };


    radius?: number;

    blue?: number;

    /**
     * The maximum possible intensity value.
     * If not specified, the intensities will be scaled based on the range of values provided.
     * Specify a max to set what the maximum possible value can be and the range will be scaled according to that max value
     */
    max?: number;


    /**
     * Set to true if the coordinates of the heatmap points are in the image coordinates system.
     */
    imageCoordinates?: boolean;
}
```

## Usage



```tsx
import {IHeatmapConfiguration} from 'uxp/components';
```

