# ExtendedTreeNode

Extended version of TreeNode that adds internal properties for node rendering


## Definition

```tsx
export interface ExtendedTreeNode extends TreeNode {
    /**
     * Array of child nodes, already resolved for rendering
     */
    children: ExtendedTreeNode[],
    /**
     * Indicates if the node is currently in the process of expanding (loading)
     */
    expanding?: boolean,
    /**
     * Indicates if the node is currently expanded
     */
    expanded?: boolean,
    /**
     * parent Id
     */
    parentId?: string,

    /**
     * parent path
     */
    parentPath?: string
}
```

## Usage

```tsx
import { ExtendedTreeNode } from 'uxp/components';
```

## Related Types

- [TreeNode](../types/TreeNode.md)

