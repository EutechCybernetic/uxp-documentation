# TreeViewCompareHandle


TreeViewCompare ref handle - exposes methods for programmatic control


## Definition

```tsx
export interface TreeViewCompareHandle {
    /**
     * Programmatically trigger a cross-tree drop operation
     *  sourceNodeId - ID of the node being moved
     *  targetNodeId - ID of the target node
     *  sourceTree - Which tree the node came from ('left' | 'right')
     *  targetTree - Which tree the node is being dropped into ('left' | 'right')
     *  dropPosition - Where to drop relative to target ('before' | 'after' | 'child')
     */
    triggerDrop: (
        sourceNodeId: string,
        targetNodeId: string,
        sourceTree: Tree,
        targetTree: Tree,
        dropPosition: DropPosition
    ) => Promise<void>;
    expandLeft: () => void;
    collapseLeft: () => void;
    expandRight: () => void;
    collapseRight: () => void;
}
```

## Usage

```tsx
import { TreeViewCompareHandle } from 'uxp/components';
```

## Related Types

- [Tree](../types/Tree.md)
- [DropPosition](../types/DropPosition.md)

