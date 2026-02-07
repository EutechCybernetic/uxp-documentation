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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|width|string|No|-|-|
|height|string|No|-|-|
|additionalStyle|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

