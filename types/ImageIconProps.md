# ImageIconProps

Props for image-based icons (URLs, data URIs)


## Definition

```tsx
export interface ImageIconProps extends BaseIconProps {
    /**
     * Image URL or data URI
     * @example "https://example.com/icon.svg"
     * @example "data:image/svg+xml;base64,..."
     */
    icon: string;

    /**
     * Icon size - supports FontAwesome size strings, numbers, or CSS units
     */
    size?: SizeProp | number | string;

    /**
     * Explicit width (overrides size)
     */
    width?: number | string;

    /**
     * Explicit height (overrides size)
     */
    height?: number | string;
}
```

## Usage

```tsx
import { ImageIconProps } from 'uxp/components';
```

## Related Types

- [BaseIconProps](../types/BaseIconProps.md)
- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

