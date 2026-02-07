# BaseIconProps

Base icon props shared by all icon types


## Definition

```tsx
export interface BaseIconProps extends AnimationProps {
    /**
     * Icon color - any CSS color value
     */
    color?: string;

    /**
     * Additional CSS class name
     */
    className?: string;

    /**
     * Inline styles
     */
    style?: CSSProperties;

    /**
     * Show loading state
     */
    isLoading?: boolean;

    /**
     * Props for skeleton loader shown while icon loads
     */
    skeletonLoader?: SkeletonLoaderProps;

    /**
     * Flip icon horizontally, vertically, or both
     */
    flip?: FlipProp;

    /**
     * Rotate icon by degrees
     */
    rotation?: RotateProp;
}
```

## Usage

```tsx
import { BaseIconProps } from 'uxp/components';
```

## Related Types

- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

