# undefined


Named fallback "shapes" a lazy view can show while its chunk loads. In v5 the
generic view is a list, so `view` and `list` share the same skeleton.


## Definition

```tsx
export type FallbackKind = 'view' | 'list' | 'dashboard' | 'detailspanel' | 'none';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

