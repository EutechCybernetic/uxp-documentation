# IStaticImage




A static image to load as the map.




```tsx
interface IStaticImage {
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
     * 
     */
    bounds?: [[number, number], [number, number]]
}
```

## Usage



```tsx
import {IStaticImage} from 'uxp/components';
```

