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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-map-mapcomponent--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="MapComponent live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|mapUrl|string|No|-|mapUrl="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"|
|staticImage|[IStaticImage](../types/IStaticImage.md)|No|-|-|
|center|{ position: IMarker, renderMarker?: boolean }|No|-|{ position: { latitude: 1.2834, longitude: 103.8607 } }|
|markers|[IMarker[]](../types/IMarker.md)|No|-|[ { latitude: 1.2834, longitude: 103.8607, data: { name: 'Marina Tower' } }, { …|
|onMarkerClick|(el: any, data: any) => void|No|-|Log the marker onMarkerClick={(el, data) => console.log('marker', data)}|
|regions|[IRegion[]](../types/IRegion.md)|No|-|-|
|onRegionClick|(event: any, data: any) => void|No|-|-|
|heatmap|[IHeatmapConfiguration](../types/IHeatmapConfiguration.md)|No|-|-|
|zoom|number|No|5|15|
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

