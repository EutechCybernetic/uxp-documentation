# IHeatmapLayerProps


Props for the HeatmapLayer component.
Extends IHeatmapConfiguration with additional layer-specific properties.



## Definition

```tsx
export interface IHeatmapLayerProps extends Omit<IHeatmapConfiguration, 'values' | 'imageCoordinates'> {
    /**
     * The heatmap data points with coordinates and intensity values
     */
    points: IHeatmapPoint[];

    /**
     * Minimum opacity (0-1, default: 0.5)
     */
    minOpacity?: number;

    /**
     * Maximum zoom level for the heatmap
     */
    maxZoom?: number;

    /**
     * Function to convert from image coordinates to map coordinates (if using static images)
     * This replaces the imageCoordinates boolean from IHeatmapConfiguration
     */
    coordinateConverter?: (lat: number, lng: number) => [number, number];
}
```

## Usage

```tsx
import { IHeatmapLayerProps } from 'uxp/components';
```

## Examples

```tsx
tsx
<HeatmapLayer
  points={[
    { latitude: 1.29, longitude: 103.85, intensity: 0.8 },
    { latitude: 1.30, longitude: 103.86, intensity: 1.0 }
  ]}
  radius={40}
  blur={20}
  max={1.0}
  gradient={{
    0.0: 'blue',
    0.5: 'lime',
    0.7: 'yellow',
    1.0: 'red'
  }}
/>
```

## Related Types

- [IHeatmapConfiguration](../types/IHeatmapConfiguration.md)
- [IHeatmapPoint](../types/IHeatmapPoint.md)

