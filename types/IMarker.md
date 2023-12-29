# IMarker



Represents an individual marker




```tsx
interface IMarker extends MarkerEvents, LeafletMarkerOptions {
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

}
```

## Usage



```tsx
import {IMarker} from 'uxp/components';
```

## Examples



```tsx
{
     latitude:0,
     longitude:23.2,
     data:{'name':'FooBar'}
 }
```

