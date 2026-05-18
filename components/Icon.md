# Icon

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=icons-icon--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Icon live demo"
></iframe>



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

#### FontAwesome with IconProp

```tsx
<Icon icon={['fas', 'save']} size="2x" spin />
```

#### FontAwesome with string

```tsx
<Icon icon="fas save" />
<Icon icon="far trash" color="red" size="2x" spin />
```

#### Phosphor with PHIconProp

```tsx
<Icon icon={['phb', 'house']} size="lg" />
```

#### Phosphor with string

```tsx
<Icon icon="phb house" />
<Icon icon="phf heart" color="red" size="lg" beat />
```

#### Images with size and animations

```tsx
<Icon icon="https://example.com/logo.svg" size="2x" spin />
<Icon icon="data:image/svg+xml;base64,..." width={50} height={50} />
```

#### Text and emoji with size and animations

```tsx
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

