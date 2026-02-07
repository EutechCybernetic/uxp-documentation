# IMapComponentProps

## Definition

```tsx
interface IMapComponentProps {
    /**
     * The url of the tile server that will serve up map tiles.
     * This url should have the following placeholders in them:
     * `{x}`, `{y}` and `{z}`
     * 
     * `{z}` represents the current zoom level
     * 
     * @example
     * ```
     * mapUrl="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
     * ```
     */
    mapUrl: string,

    /**
     * A static image to use instead of a map layout.
     * If you are using a static image, specify `mapUrl` as an empty string.
     * 
     * The static image consists of a url for the image and a width and height of the image.
     * Note that the width and height values  be relative - just that the ratio should be accurate.
     * 
     * @example
     * ```
     * staticImage={{url:'https://myserver/floor-plan.png',width:200,height:400}}
     * ```
     */
    staticImage?: IStaticImage,

    /**
     * Where the map is centered.
     */
    center?: { position: IMarker, renderMarker?: boolean },

    /**
     * A list of markers to render.
     * Each marker has a `latitude` `longitude` and `data` field.
     * The `data` field can store arbitrary data.
     */
    markers?: IMarker[],

    /**
     * This handler gets called whenever a marker is clicked on.
     * The first parameter represents the marker element that was clicked on.
     * The second parameter represents the data associated with the marker
     */
    onMarkerClick?: (el: any, data: any) => void

    /**
     * regions to show on map
     */
    regions?: IRegion[],
    /**
     * this handler will get called when a region is clicked
     * 
     */
    onRegionClick?: (event: any, data: any) => void,



    /**
     * If you want to overlay a heatmap -  assign this object with some valid value
     */
    heatmap?: IHeatmapConfiguration

    /**
     * The default zoom level to show on the map
     */
    zoom?: number,
    /**
     * max zoom level.
     * optional. default is 19
     */
    maxZoom?: number,
    /**
     * min zoom level.
     * optional. default is -19
     */
    minZoom?: number,
    /**
     * zoom on scroll 
     * default is false
     */
    zoomOnScroll?: boolean

    hideZoomControlls?: boolean,
    /**
     * this handler will get called when the map is clicked 
     */
    onClick?: (event: LeafletMouseEvent) => void,

    onZoomEnd?: (event: LeafletEvent) => void
    onDragEnd?: (event: DragEndEvent) => void
}
```

## Usage

```tsx
import { IMapComponentProps } from 'uxp/components';
```

## Related Types

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

