# IMarker


Represents an individual marker on the map


## Definition

```tsx
export interface IMarker extends Omit<LeafletMarkerOptions, 'icon'> {
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
     * colour for the built-in teardrop pin (any CSS colour). Ignored when
     * `customHTMLIcon` is set. Defaults to the theme accent colour.
     */
    color?: string,
    /**
     * icon to render inside the built-in pin instead of the dot — a uxp icon
     * string, e.g. 'fas bell', 'fal coffee', 'phb house'. Ignored when
     * `customHTMLIcon` is set.
     */
    icon?: string,
    /**
     * colour of the `icon` inside the pin (any CSS colour). Defaults to white.
     */
    iconColor?: string,
    /**
     * pin height in pixels (width scales to keep the 2:3 shape). Ignored when
     * `customHTMLIcon` is set. Defaults to 36.
     */
    size?: number,
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

