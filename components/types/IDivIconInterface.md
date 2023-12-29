# IDivIconInterface





Custom html marker
refer https://docs.eegeo.com/eegeo.js/v0.1.780/docs/leaflet/L.DivIcon/





```tsx
interface IDivIconInterface {
    /**
     * A custom class name to assign to the icon.
     */
    className: string,
    /**
     * A custom HTML code to put inside the div element.
     */
    html: string,
    /**
     * Size of the icon in pixels. Can be also set through CSS.
     */
    iconSize?: [number, number],
    /**
     * The coordinates of the "tip" of the icon (relative to its top left corner). 
     * The icon will be aligned so that this point is at the marker's geographical location. 
     * Centered by default if size is specified, also can be set in CSS with negative margins.
     */
    iconAnchor?: [number, number]
    /**
     * The coordinates of the point from which popups will "open", relative to the icon anchor.
     */
    popupAnchor?: [number, number]
}
```

## Usage



```tsx
import {IDivIconInterface} from 'uxp/components';
```

## Examples



```tsx
{
      className: 'custom-marker',
      html: '<div>Marker Content</div>
 }
```

