# TreeViewCompare



TreeViewCompare component provides drag-and-drop functionality between two TreeView components

## How Cross-Tree Drag Works

1. **Single DndContext**: Wraps both trees for unified collision detection
2. **Drag State Coordination**:
   - `isDragging`: Global state (true when ANY drag is happening)
   - `isDragSource`: Tree-specific state (identifies which tree is being dragged from)
3. **Drop Target Highlighting**: Target tree receives global `isDragging=true`, enabling
   visual feedback even though it's not the drag source
4. **Validation**: Optional `validateDrop` function for custom drop rules

## Usage Pattern

- Set `dragDirection` to control allowed drag operations ('left-to-right', 'right-to-left', 'both')
- Implement `onCrossDrop` to handle data updates when nodes are moved between trees
- Use `renderLeftLabel`/`renderRightLabel` for tree-specific node rendering



## Installation

```tsx
import { TreeViewCompare } from 'uxp/components';
```

## Signature

```tsx
const TreeViewCompare: React.ForwardRefExoticComponent<React.RefAttributes<TreeViewCompareHandle> & TreeViewCompareProps>
```

## Examples

```tsx
tsx
<TreeViewCompare
  leftItems={currentNavigation}
  rightItems={configuredNavigation}
  leftTitle="Current Navigation"
  rightTitle="Available Items"
  dragDirection="right-to-left"
  onCrossDrop={(source, target, sourceTree, targetTree) => {
    console.log('Dropped', source.label, 'onto', target.label);
    // Handle the drop logic
  }}
  renderRightLabel={(node) => (
    <span style={{ color: node.isNew ? 'green' : 'inherit' }}>
      {node.label}
    </span>
  )}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|leftItems|[TreeNode[]](../types/TreeNode.md)|Yes|-|-|
|rightItems|[TreeNode[]](../types/TreeNode.md)|Yes|-|-|
|leftTitle|string \| React.ReactNode|No|-|-|
|rightTitle|string \| React.ReactNode|No|-|-|
|leftLoading|boolean|No|-|-|
|rightLoading|boolean|No|-|-|
|dragDirection|'left-to-right' \| 'right-to-left' \| 'both'|No|-|-|
|onDragStart|(node: TreeNode, sourceTree: Tree) => void|No|-|-|
|onDragEnd|(sourceNode: TreeNode, parentNode: TreeNode, sourceNodeIndex: number, sibilingNodes: TreeNode[], sourceTree: Tree, targetTree: Tree) => void \| Promise<void>|No|-|-|
|renderLeftLabel|(node: TreeNode) => React.ReactNode|No|-|-|
|renderRightLabel|(node: TreeNode) => React.ReactNode|No|-|-|
|renderLeftDetails|(node: TreeNode) => React.ReactNode|No|-|-|
|renderRightDetails|(node: TreeNode) => React.ReactNode|No|-|-|
|expandAllNodes|boolean|No|-|-|
|showPath|boolean|No|-|-|
|treeStyles|any|No|-|-|
|showHeaders|boolean|No|-|-|
|validateDrop|(sourceNode: TreeNode, targetNode: TreeNode, sourceTree: Tree, targetTree: Tree) => boolean|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|maxDepth|number|No|-|-|
|enableSearch|boolean|No|-|-|
|onSearch|(query: string, side: Tree) => void|No|-|-|
|enableAdd|boolean|No|-|-|
|addButtonLabel|string|No|-|-|
|onAdd|(parentNode: ExtendedTreeNode \| undefined, side: Tree) => void|No|-|-|
|enableEdit|boolean|No|-|-|
|onEdit|(node: ExtendedTreeNode, side: Tree) => void|No|-|-|
|enableDelete|boolean|No|-|-|
|onDelete|(id: string, side: Tree) => void|No|-|-|
|enableReordering|boolean|No|-|-|
|onReorder|(reorderedNodes: TreeNode[], draggedNode: TreeNode, newIndex: number, parentId: string \| undefined, side: Tree) => Promise<boolean>|No|-|-|
|enableInternalHierarchyChange|boolean|No|-|-|
|onInternalHierarchyChange|(movedNode: TreeNode, newIndex: number, sibilings: TreeNode[], newParentId: string \| null, side: Tree) => void \| Promise<void>|No|-|-|
|multiSelect|boolean|No|-|-|
|leftSelected|TreeNode \| TreeNode[]|No|-|-|
|rightSelected|TreeNode \| TreeNode[]|No|-|-|
|onSelect|(selected: TreeNode \| TreeNode[], side: Tree) => void|No|-|-|
|showActionButtonOnlyOnHover|boolean|No|-|-|
|actionButtonsPosition|'inline' \| 'end'|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|triggerDrop|( sourceNodeId: string, targetNodeId: string, sourceTree: Tree, targetTree: Tree, dropPosition: DropPosition ) => Promise<void>|Programmatically trigger a cross-tree drop operation sourceNodeId - ID of the node being moved targetNodeId - ID of the target node sourceTree - Which tree the node came from ('left' \| 'right') targetTree - Which tree the node is being dropped into ('left' \| 'right') dropPosition - Where to drop relative to target ('before' \| 'after' \| 'child') |

## Related Types

- [TreeViewCompareProps](../types/TreeViewCompareProps.md)
- [TreeNode](../types/TreeNode.md)
- [Tree](../types/Tree.md)
- [ExtendedTreeNode](../types/ExtendedTreeNode.md)
- [TreeViewCompareHandle](../types/TreeViewCompareHandle.md)
- [DropPosition](../types/DropPosition.md)

