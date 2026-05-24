# isWidget


Returns true if the given id belongs to a widget.
Handles both 3-part legacy IDs ("moduleId/widget/componentId") and
2-part unified IDs ("moduleId/componentId") from the unified component registry.


## Installation

```tsx
import { isWidget } from 'uxp/components';
```

## Signature

```tsx
function isWidget(id: string): boolean
```

