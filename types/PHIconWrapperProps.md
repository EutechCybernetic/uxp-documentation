# PHIconWrapperProps




## Definition

```tsx
interface PHIconWrapperProps {
    /**
     * Icon name or tuple of [prefix, iconName]
     * @example 'house'
     * @example ['phb', 'house']
     * @example ['phf', 'heart']
     */
    icon: PHIconProp;

    /**
     * Icon size - supports FontAwesome size strings, numbers, or CSS units
     * @example "lg"
     * @example "2x"
     * @example 24
     * @example "2rem"
     */
    size?: SizeProp | number | string;

    /**
     * Icon color - any CSS color value
     * @example "red"
     * @example "#ff0000"
     * @example "currentColor"
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
     * Flip icon horizontally, vertically, or both
     */
    flip?: FlipProp;

    /**
     * Rotate icon by degrees
     */
    rotation?: RotateProp;

    /**
     * Animate icon with spinning effect
     */
    spin?: boolean;

    /**
     * Animate icon with pulsing effect
     */
    pulse?: boolean;

    /**
     * Animate icon with beat effect
     */
    beat?: boolean;

    /**
     * Animate icon with bounce effect
     */
    bounce?: boolean;

    /**
     * Animate icon with shake effect
     */
    shake?: boolean;

    /**
     * Animate icon with fade effect
     */
    fade?: boolean;

    /**
     * Add border around icon
     */
    border?: boolean;

    /**
     * Set icon to fixed width (useful for aligning icons in lists)
     */
    fixedWidth?: boolean;

    /**
     * Props for skeleton loader shown while icon loads
     */
    skeletonLoader?: SkeletonLoaderProps;
}
```

## Usage

```tsx
import { PHIconWrapperProps } from 'uxp/components';
```

## Related Types

- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

