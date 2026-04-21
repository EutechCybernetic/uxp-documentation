# MapComponent

A map widget that can show a pannable/zoomable map with markers




## Installation

```tsx
import { MapComponent } from 'uxp/components';
```

## Signature

```tsx
const MapComponent: React.FunctionComponent<IMapComponentProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|mapUrl|string|No|-|* ```|
|staticImage|[IStaticImage](../types/IStaticImage.md)|No|-|* ```|
|center|{ position: IMarker, renderMarker?: boolean }|No|-|-|
|markers|[IMarker[]](../types/IMarker.md)|No|-|-|
|onMarkerClick|(el: any, data: any) => void|No|-|-|
|regions|[IRegion[]](../types/IRegion.md)|No|-|-|
|onRegionClick|(event: any, data: any) => void|No|-|-|
|heatmap|[IHeatmapConfiguration](../types/IHeatmapConfiguration.md)|No|-|-|
|zoom|number|No|-|-|
|maxZoom|number|No|-|-|
|minZoom|number|No|-|-|
|zoomOnScroll|boolean|No|-|-|
|hideZoomControlls|boolean|No|-|-|
|onClick|(event: LeafletMouseEvent) => void|No|-|-|
|onZoomEnd|(event: LeafletEvent) => void|No|-|-|
|onDragEnd|(event: DragEndEvent) => void|No|-|-|

## Related Types

- [IMapComponentProps](../types/IMapComponentProps.md)
- [IStaticImage](../types/IStaticImage.md)
- [IMarker](../types/IMarker.md)
- [IDivIconInterface](../types/IDivIconInterface.md)
- [IRenderMarkerPopup](../types/IRenderMarkerPopup.md)
- [IRenderMarkerTooltip](../types/IRenderMarkerTooltip.md)
- [IRegion](../types/IRegion.md)
- [IPolygonBound](../types/IPolygonBound.md)
- [ICircleBound](../types/ICircleBound.md)
- [IHeatmapConfiguration](../types/IHeatmapConfiguration.md)
- [IHeatmapPoint](../types/IHeatmapPoint.md)

