# MapComponent



A map widget that can show a pannable/zoomable map with markers




## Installation



```tsx
import {MapComponent} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|mapUrl|string|The url of the tile server that will serve up map tiles. This url should have the following placeholders in them: `{x}`, `{y}` and `{z}` `{z}` represents the current zoom level |
|staticImage|[IStaticImage](types/IStaticImage)|A static image to use instead of a map layout. If you are using a static image, specify `mapUrl` as an empty string. The static image consists of a url for the image and a width and height of the image. Note that the width and height values be relative - just that the ratio should be accurate. |
|center|{ position: IMarker, renderMarker?: boolean }|Where the map is centered. |
|markers|IMarker[]|A list of markers to render. Each marker has a `latitude` `longitude` and `data` field. The `data` field can store arbitrary data. |
|onMarkerClick|(el: any, data: any) => void|This handler gets called whenever a marker is clicked on. The first parameter represents the marker element that was clicked on. The second parameter represents the data associated with the marker |
|regions|IRegion[]|regions to show on map |
|onRegionClick|(event: any, data: any) => void|this handler will get called when a region is clicked |
|heatmap|[IHeatmapConfiguration](types/IHeatmapConfiguration)|If you want to overlay a heatmap - assign this object with some valid value |
|zoom|number|The default zoom level to show on the map |
|maxZoom|number|max zoom level. optional. default is 19 |
|minZoom|number|min zoom level. optional. default is -19 |
|zoomOnScroll|boolean|zoom on scroll default is false |
|onClick|(event: LeafletMouseEvent) => void|this handler will get called when the map is clicked |
|onZoomEnd|(event: LeafletEvent) => void||
|onDragEnd|(event: DragEndEvent) => void||
### mapUrl



---



The url of the tile server that will serve up map tiles.
This url should have the following placeholders in them:
`{x}`, `{y}` and `{z}`

`{z}` represents the current zoom level



|type|
|-|
|string|


```tsx
mapUrl="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
```

### staticImage



---



A static image to use instead of a map layout.
If you are using a static image, specify `mapUrl` as an empty string.

The static image consists of a url for the image and a width and height of the image.
Note that the width and height values  be relative - just that the ratio should be accurate.



|type|
|-|
|[IStaticImage](types/IStaticImage)|


```tsx
staticImage={{url:'https://myserver/floor-plan.png',width:200,height:400}}
```

### center



---



Where the map is centered.


|type|
|-|
|{ position: IMarker, renderMarker?: boolean }|
### markers



---



A list of markers to render.
Each marker has a `latitude` `longitude` and `data` field.
The `data` field can store arbitrary data.


|type|
|-|
|IMarker[]|
### onMarkerClick



---



This handler gets called whenever a marker is clicked on.
The first parameter represents the marker element that was clicked on.
The second parameter represents the data associated with the marker


|type|
|-|
|(el: any, data: any) => void|
### regions



---



regions to show on map


|type|
|-|
|IRegion[]|
### onRegionClick



---



this handler will get called when a region is clicked



|type|
|-|
|(event: any, data: any) => void|
### heatmap



---



If you want to overlay a heatmap -  assign this object with some valid value


|type|
|-|
|[IHeatmapConfiguration](types/IHeatmapConfiguration)|
### zoom



---



The default zoom level to show on the map


|type|
|-|
|number|
### maxZoom



---



max zoom level.
optional. default is 19


|type|
|-|
|number|
### minZoom



---



min zoom level.
optional. default is -19


|type|
|-|
|number|
### zoomOnScroll



---



zoom on scroll
default is false


|type|
|-|
|boolean|
### onClick



---



this handler will get called when the map is clicked


|type|
|-|
|(event: LeafletMouseEvent) => void|
### onZoomEnd



---





|type|
|-|
|(event: LeafletEvent) => void|
### onDragEnd



---





|type|
|-|
|(event: DragEndEvent) => void|
