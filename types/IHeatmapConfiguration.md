# IHeatmapConfiguration


Configuration for heatmap layer overlay


## Definition

```tsx
export interface IHeatmapConfiguration {
    /**
     * The values to show on the heatmap. Each value has a coordinate and an intensity.
     * Intensities are relative - the heatmap colors will be scaled based on the min/max intensities in the array
     */
    values: IHeatmapPoint[];

    /**
     * Color gradient specified as an object with stop values (0-1) as keys and colors as values
     */
    gradient?: { [stop: number]: string };

    /**
     * Radius of each heatmap point in pixels
     * Default is 25
     */
    radius?: number;

    /**
     * Amount of blur to apply
     * Default is 15
     */
    blur?: number;

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
import { IHeatmapConfiguration } from 'uxp/components';
```

## Examples

```tsx
tsx
heatmap={{
  values: [
    { latitude: 1.29, longitude: 103.85, intensity: 0.8 },
    { latitude: 1.30, longitude: 103.86, intensity: 1.0 }
  ],
  radius: 40,
  blur: 20,
  max: 1.0,
  gradient: {
    0.0: 'blue',
    0.5: 'lime',
    0.7: 'yellow',
    1.0: 'red'
  }
}}
```

## Related Types

- [IHeatmapPoint](../types/IHeatmapPoint.md)

