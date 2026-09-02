# parseComponentId


Parses a component ID string into its constituent parts.
Accepts both 3-part (moduleId/type/compId) and 2-part (moduleId/compId) formats.



## Installation

```tsx
import { parseComponentId } from 'uxp/components';
```

## Signature

```tsx
function parseComponentId(id: string): { moduleId: string; componentId: string; type?: ComponentType } | null
```

## Examples

```tsx
parseComponentId('iviva-system-app/widget/chart');
// Returns: { moduleId: 'iviva-system-app', componentId: 'chart', type: ComponentType.Widget }
```

