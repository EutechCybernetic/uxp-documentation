# PHIconWrapper



Wrapper for Phosphor Icons web components with FontAwesome-compatible API
This shows a loading state (skeleton loader) until the icon web component is ready,
then renders the actual icon.

**Parent app must load Phosphor Icons web components via CDN:**
```html
<script type="module" src="https://unpkg.com/@phosphor-icons/webcomponents@2.1"></script>
```



## Installation

```tsx
import { PHIconWrapper } from 'uxp/components';
```

## Signature

```tsx
const PHIconWrapper: React.FunctionComponent<PHIconWrapperProps>
```

## Examples

```tsx
tsx
// Simple usage with default regular weight
<PHIconWrapper icon="house" />
```

```tsx
tsx
// With weight prefix and FontAwesome-style size
<PHIconWrapper icon={['phb', 'house']} size="2x" color="blue" />
```

```tsx
tsx
// With animations
<PHIconWrapper icon={['phf', 'heart']} spin color="red" size="lg" />
```

```tsx
tsx
// With flip and rotation
<PHIconWrapper icon="arrow-right" flip="horizontal" rotation={90} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|[PHIconProp](../types/PHIconProp.md)|Yes|-|'house'|
|size|SizeProp \| number \| string|No|-|"lg"|
|color|string|No|-|"red"|
|className|string|No|-|-|
|style|CSSProperties|No|-|-|
|flip|FlipProp|No|-|-|
|rotation|RotateProp|No|-|-|
|spin|boolean|No|-|-|
|pulse|boolean|No|-|-|
|beat|boolean|No|-|-|
|bounce|boolean|No|-|-|
|shake|boolean|No|-|-|
|fade|boolean|No|-|-|
|border|boolean|No|-|-|
|fixedWidth|boolean|No|-|-|
|skeletonLoader|[SkeletonLoaderProps](../types/SkeletonLoaderProps.md)|No|-|-|

## Related Types

- [PHIconWrapperProps](../types/PHIconWrapperProps.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

