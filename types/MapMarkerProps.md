# MapMarkerProps


A customisable teardrop map pin. Use it standalone (legends, previews) or let
`MapComponent` render it for a marker via the `color`/`icon`/`iconColor`
fields on `IMarker`. Icons are uxp icon strings (FontAwesome or Phosphor) and
render through the shared `<Icon>` component.



## Definition

```tsx
export interface MapMarkerProps {
    /**
     * Pin body colour — any CSS colour. Defaults to the theme accent colour.
     */
    color?: string;
    /**
     * Icon to show in the pin head instead of the dot — a uxp icon string,
     * e.g. 'fas bell', 'fal coffee', 'phb anchor'.
     */
    icon?: string;
    /**
     * Icon colour — any CSS colour. Defaults to white.
     */
    iconColor?: string;
    /**
     * Pin height in pixels (width scales to keep the 2:3 shape). Default 36.
     */
    size?: number;
}
```

## Usage

```tsx
import { MapMarkerProps } from 'uxp/components';
```

## Examples

```tsx
tsx
<MapMarker color="#e11d48" icon="fas bell" iconColor="#fff" />
<MapMarker color="#0891b2" icon="phb anchor" size={40} />
<MapMarker />   // theme-accent pin with a plain dot
```

