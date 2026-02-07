# FontAwesomeIconProps

Props for FontAwesome icons
Extends FontAwesome's own props with our base props


## Definition

```tsx
export interface FontAwesomeIconProps extends BaseIconProps {
    /**
     * FontAwesome icon in IconProp format or string format
     * @example ['fas', 'save']
     * @example "fas save"
     */
    icon: IconProp | string;

    /**
     * Icon size - FontAwesome size prop
     */
    size?: FAIconProps['size'];
}
```

## Usage

```tsx
import { FontAwesomeIconProps } from 'uxp/components';
```

## Related Types

- [BaseIconProps](../types/BaseIconProps.md)
- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

