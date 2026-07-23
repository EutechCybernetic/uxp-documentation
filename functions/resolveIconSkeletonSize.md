# resolveIconSkeletonSize


Resolve the width/height for an icon's loading skeleton so it tracks the icon's
own size instead of filling the parent.
- explicit `width`/`height` (image icons) win
- else the `size` prop (FA token → em, number/CSS string passthrough)
- else falls back to `2rem`


## Installation

```tsx
import { resolveIconSkeletonSize } from 'uxp/components';
```

## Signature

```tsx
function resolveIconSkeletonSize(opts: {
    size?: SizeProp | number | string, width?: number | string, height?: number | string
}): { width: string, height: string }
```

