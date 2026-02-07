# HeatmapLayer


HeatmapLayer component for react-leaflet v4

A custom implementation using leaflet.heat that integrates with react-leaflet v4.
Supports all standard heatmap configurations including custom gradients, radius, and intensity.
Works with both geographic maps and static images (floor plans).



## Installation

```tsx
import { HeatmapLayer } from 'uxp/components';
```

## Signature

```tsx
const HeatmapLayer: React.FunctionComponent<IHeatmapLayerProps>
```

## Examples

```tsx
tsx
// Regular map heatmap
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

// Static image heatmap
<HeatmapLayer
  points={imageHeatmapPoints}
  coordinateConverter={(lat, lng) => convertFromImagePosition(lng, lat, imageWidth, imageHeight)}
  radius={50}
  gradient={{ 0.0: 'navy', 0.5: 'cyan', 1.0: 'red' }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|points|[IHeatmapPoint[]](../types/IHeatmapPoint.md)|Yes|-|-|
|minOpacity|number|No|-|-|
|maxZoom|number|No|-|-|
|coordinateConverter|(lat: number, lng: number) => [number, number]|No|-|-|

## Related Types

- [IHeatmapLayerProps](../types/IHeatmapLayerProps.md)
- [IHeatmapConfiguration](../types/IHeatmapConfiguration.md)
- [IHeatmapPoint](../types/IHeatmapPoint.md)

