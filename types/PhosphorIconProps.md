# PhosphorIconProps

Props for Phosphor icons


## Definition

```tsx
export interface PhosphorIconProps extends BaseIconProps {
    /**
     * Phosphor icon in PHIconProp format or string format
     * @example ['phb', 'house']
     * @example "phb house"
     * @example "house"
     */
    icon: PHIconProp | string;

    /**
     * Icon size - supports FontAwesome size strings, numbers, or CSS units
     */
    size?: SizeProp | number | string;
}
```

## Usage

```tsx
import { PhosphorIconProps } from 'uxp/components';
```

## Related Types

- [BaseIconProps](../types/BaseIconProps.md)
- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)

