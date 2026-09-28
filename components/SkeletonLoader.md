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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=loaders-skeletonloader--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="SkeletonLoader live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=loaders-skeletonloader--default&amp;viewMode=story&amp;args=width%3A200px%3Bheight%3A20px"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="SkeletonLoader: Example 1"
></iframe>

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=loaders-skeletonloader--default&amp;viewMode=story&amp;args=height%3A2rem%3BclassName%3Acustom-skeleton&amp;props=%7B%22width%22%3A%22100%25%22%2C%22additionalStyle%22%3A%7B%22borderRadius%22%3A%224px%22%7D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="SkeletonLoader: Example 2"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|width|string|No|-|"240px"|
|height|string|No|-|"20px"|
|additionalStyle|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

