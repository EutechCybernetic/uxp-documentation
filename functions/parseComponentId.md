# parseComponentId


Parses a component ID string into its constituent parts



## Installation

```tsx
import { parseComponentId } from 'uxp/components';
```

## Signature

```tsx
function parseComponentId(id: string): { moduleId: string; componentId: string; type: ComponentType } | null
```

## Examples

```tsx
const parsed = parseComponentId('com.example.module/widget/chart');
// Returns: { moduleId: 'com.example.module', componentId: 'chart', type: ComponentType.Widget }
```

