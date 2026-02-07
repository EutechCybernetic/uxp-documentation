# parsePrefixedId

Parse a potentially prefixed node ID using regex
Returns tree identifier and clean node ID in one operation




## Installation

```tsx
import { parsePrefixedId } from 'uxp/components';
```

## Signature

```tsx
function parsePrefixedId(id: string): { tree: Tree | null; nodeId: string }
```

## Examples

```tsx
parsePrefixedId("left___folder-1")   // { tree: 'left', nodeId: 'folder-1' }
parsePrefixedId("right___item-5")    // { tree: 'right', nodeId: 'item-5' }
parsePrefixedId("unprefixed-node")   // { tree: null, nodeId: 'unprefixed-node' }
```

