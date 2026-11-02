# IImageCropRules


Size and print-resolution rules for a cropped image. 0 or undefined means no limit.


## Definition

```tsx
export interface IImageCropRules {
    /** Smallest width in pixels */
    minWidth?: number
    /** Largest width in pixels */
    maxWidth?: number
    /** Smallest height in pixels */
    minHeight?: number
    /** Largest height in pixels */
    maxHeight?: number
    /** Lowest print resolution in DPI */
    minDpi?: number
    /** Highest print resolution in DPI */
    maxDpi?: number
    /**
     * Largest file in bytes. The result is saved with lower JPEG quality, then smaller, until it fits.
     * With no width or height rules the frame keeps the picture's own shape.
     */
    maxBytes?: number
}
```

## Usage

```tsx
import { IImageCropRules } from 'uxp/components';
```

