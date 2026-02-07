# Icon


Universal Icon component that handles FontAwesome, Phosphor, URLs, and text/emoji icons
Supports size and animations for all icon types



## Installation

```tsx
import { Icon } from 'uxp/components';
```

## Signature

```tsx
const Icon: React.FunctionComponent<IconProps>
```

## Examples

```tsx
FontAwesome with IconProp
```
<Icon icon={['fas', 'save']} size="2x" spin />
```

```tsx
FontAwesome with string
```
<Icon icon="fas save" />
<Icon icon="far trash" color="red" size="2x" spin />
```

```tsx
Phosphor with PHIconProp
```
<Icon icon={['phb', 'house']} size="lg" />
```

```tsx
Phosphor with string
```
<Icon icon="phb house" />
<Icon icon="phf heart" color="red" size="lg" beat />
```

```tsx
Images with size and animations
```
<Icon icon="https://example.com/logo.svg" size="2x" spin />
<Icon icon="data:image/svg+xml;base64,..." width={50} height={50} />
```

```tsx
Text and emoji with size and animations
```
<Icon icon="×" fontSize="24px" />
<Icon icon="💾" size="2x" bounce />
```

## Related Types

- [IconProps](../types/IconProps.md)
- [FontAwesomeIconProps](../types/FontAwesomeIconProps.md)
- [BaseIconProps](../types/BaseIconProps.md)
- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)
- [PhosphorIconProps](../types/PhosphorIconProps.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ImageIconProps](../types/ImageIconProps.md)
- [TextIconProps](../types/TextIconProps.md)

