# IMarker


Represents an individual marker on the map


## Definition

```tsx
export interface IMarker extends LeafletMarkerOptions {
    /**
     * latitude
     */
    latitude: number,
    /**
     * longitude
     */
    longitude: number,
    /**
     * any data to return when click on the marker
     */
    data?: any,
    /**
     * custom HTML marker
     */
    customHTMLIcon?: IDivIconInterface,
    /**
     * content to display in pop-up
     */
    renderPopup?: IRenderMarkerPopup,
    /**
     * content to display in tooltip
     */
    renderTooltip?: IRenderMarkerTooltip,

    /**
     * use image coordinates to calculate bounds
     */
    imageCoordinates?: boolean,

    onclick?: (event: LeafletMouseEvent) => void,
    ondragstart?: (event: LeafletEvent) => void,
    ondragend?: (event: DragEndEvent) => void,

}
```

## Usage

```tsx
import { IMarker } from 'uxp/components';
```

## Examples

```tsx
tsx
{
  latitude: 1.29,
  longitude: 103.85,
  data: { name: 'Singapore' },
  customHTMLIcon: {
    className: 'custom-marker',
    html: '<div style="background: red; width: 20px; height: 20px;"></div>'
  },
  draggable: true
}
```

## Related Types

- [IDivIconInterface](../types/IDivIconInterface.md)
- [IRenderMarkerPopup](../types/IRenderMarkerPopup.md)
- [IRenderMarkerTooltip](../types/IRenderMarkerTooltip.md)

