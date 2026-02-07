# IStaticImage


A static image to use instead of a map (e.g., floor plan, blueprint)


## Definition

```tsx
export interface IStaticImage {
    /**
     * The url of the image
     */
    url: string;
    /**
     * The width of the image in pixels
     */
    width: number;

    /**
     * The height of the image in pixels
     */
    height: number;
    /**
     * static image bounds
     * if not provided these will be calculated based on image width and height (NOTE: this may not be accurate)
     */
    bounds?: [[number, number], [number, number]]
}
```

## Usage

```tsx
import { IStaticImage } from 'uxp/components';
```

## Examples

```tsx
tsx
{
  url: 'https://example.com/floorplan.png',
  width: 623,
  height: 431
}
```

