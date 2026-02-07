# IHeatmapPoint


Represents a single point on the heatmap with coordinates and intensity


## Definition

```tsx
export interface IHeatmapPoint {
    /**
     * The latitude of the point
     */
    latitude: number;

    /**
     * The longitude of the point
     */
    longitude: number;

    /**
     * The intensity of the point (0-1 recommended)
     */
    intensity: number;
}
```

## Usage

```tsx
import { IHeatmapPoint } from 'uxp/components';
```

## Examples

```tsx
tsx
{
  latitude: 1.29,
  longitude: 103.85,
  intensity: 0.8
}
```

