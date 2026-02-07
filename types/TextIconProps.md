# TextIconProps

Props for text/emoji icons


## Definition

```tsx
export interface TextIconProps extends BaseIconProps {
    /**
     * Text or emoji character(s)
     * @example "×"
     * @example "💾"
     */
    icon: string;

    /**
     * Icon size - supports FontAwesome size strings, numbers, or CSS units
     */
    size?: SizeProp | number | string;

    /**
     * Font size (overrides size for text)
     */
    fontSize?: number | string;
}
```

## Usage

```tsx
import { TextIconProps } from 'uxp/components';
```

## Related Types

- [BaseIconProps](../types/BaseIconProps.md)
- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

