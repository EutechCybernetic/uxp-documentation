# TreeViewHandle


TreeView ref handle - exposes methods for programmatic control


## Definition

```tsx
export interface TreeViewHandle {
    /**
     * Programmatically trigger a drop operation
     * @param sourceNodeId - ID of the node being moved
     * @param targetNodeId - ID of the target node
     * @param dropPosition - Where to drop relative to target ('before' | 'after' | 'child')
     */
    triggerDrop: (sourceNodeId: string, targetNodeId: string, dropPosition: DropPosition) => Promise<void>;
}
```

## Usage

```tsx
import { TreeViewHandle } from 'uxp/components';
```

## Related Types

- [DropPosition](../types/DropPosition.md)

