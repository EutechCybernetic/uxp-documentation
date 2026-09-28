# SkeletonLoader


A component that displays a skeleton loader for placeholder content during loading.



## Installation

```tsx
import { SkeletonLoader } from 'uxp/components';
```

## Signature

```tsx
const SkeletonLoader: React.FunctionComponent<SkeletonLoaderProps>
```

## Examples

```tsx
<SkeletonLoader
  width="200px"
  height="20px"
/>
```

```tsx
<SkeletonLoader
  width="100%"
  height="2rem"
  className="custom-skeleton"
  additionalStyle={{ borderRadius: '4px' }}
/>
```

## Live preview

[Open SkeletonLoader in the playground →](<https://story.uxp.iviva.com/?path=/docs/loaders-skeletonloader--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/loaders-skeletonloader--docs&args=width%3A200px%3Bheight%3A20px>)
- [Example 2](<https://story.uxp.iviva.com/?path=/docs/loaders-skeletonloader--docs&args=height%3A2rem%3BclassName%3Acustom-skeleton&props=%7B%22width%22%3A%22100%25%22%2C%22additionalStyle%22%3A%7B%22borderRadius%22%3A%224px%22%7D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|width|string|No|-|"240px"|
|height|string|No|-|"20px"|
|additionalStyle|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

