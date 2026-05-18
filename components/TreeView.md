# TreeView

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-treeview--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TreeView live demo"
></iframe>





TreeView component renders a hierarchical structure of nodes with optional icons, labels, and selectable functionality.



## Installation

```tsx
import { TreeView } from 'uxp/components';
```

## Signature

```tsx
const TreeView: React.ForwardRefExoticComponent<React.RefAttributes<TreeViewHandle> & TreeViewProps>
```

## Examples

```tsx
<TreeView
   items={[
     { id: '1', label: 'Root Node', children: [{ id: '1-1', label: 'Child Node' }] }
   ]}
   selected={selectedNode}
   onSelect={handleSelectNode}
   showPath={true}
   styles={{
     nodeBGColor: '#f0f0f0',
     labelTextColor: '#333',
   }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|[TreeNode[]](../types/TreeNode.md)|Yes|-|-|
|noItemsMessage|string|No|-|-|
|showPath|boolean|No|-|-|
|renderRootNodesHorizontally|boolean|No|-|-|
|multiSelect|boolean|No|-|-|
|selected|TreeNode \| TreeNode[]|No|-|-|
|onSelect|(selected: TreeNode \| TreeNode[]) => void|No|-|-|
|styles|[TreeViewStyles](../types/TreeViewStyles.md)|No|-|-|
|showHeader|boolean|No|-|-|
|title|string \| React.ReactNode|No|-|-|
|enableSearch|boolean|No|-|-|
|onSearch|(query: string) => void|No|-|-|
|expandAllNodes|boolean|No|-|-|
|enableAdd|boolean|No|-|-|
|addButtonLabel|string|No|-|-|
|enableEdit|boolean|No|-|-|
|enableDelete|boolean|No|-|-|
|onAdd|(parentNode?: ExtendedTreeNode) => void|No|-|-|
|onEdit|(node: ExtendedTreeNode) => void|No|-|-|
|onDelete|(id: string) => void|No|-|-|
|customActions|(node: ExtendedTreeNode) => CustomActionButton[]|No|-|-|
|showActionButtonOnlyOnHover|boolean|No|-|-|
|actionButtonsPosition|'inline' \| 'end'|No|-|-|
|renderLabel|(node: TreeNode) => React.ReactNode|No|-|-|
|renderDetails|(node: TreeNode) => React.ReactNode|No|-|-|
|loading|boolean|No|-|-|
|enableDrag|boolean|No|-|-|
|enableDrop|boolean|No|-|-|
|enableReordering|boolean|No|-|-|
|enableHierarchyChange|boolean|No|-|-|
|maxDepth|number|No|-|-|
|reorderLoading|boolean|No|-|-|
|onReorder|(reorderedNodes: TreeNode[], draggedNode: TreeNode, newIndex: number, parentId?: string) => Promise<boolean>|No|-|-|
|onHierarchyChange|(movedNode: TreeNode, newParentId: string \| null, newIndex: number) => void \| Promise<void>|No|-|-|
|disableInternalDndContext|boolean|No|-|-|
|externalDragState|[DragState](../types/DragState.md)|No|-|-|
|idPrefixForComparison|string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|triggerDrop|(sourceNodeId: string, targetNodeId: string, dropPosition: DropPosition) => Promise<void>|Programmatically trigger a drop operation |
|expandAll|() => void|Expand all nodes in the tree |
|collapseAll|() => void|Collapse all nodes in the tree |

## Related Types

- [TreeViewProps](../types/TreeViewProps.md)
- [TreeNode](../types/TreeNode.md)
- [TreeViewStyles](../types/TreeViewStyles.md)
- [ExtendedTreeNode](../types/ExtendedTreeNode.md)
- [CustomActionButton](../types/CustomActionButton.md)
- [DragState](../types/DragState.md)
- [DropPosition](../types/DropPosition.md)
- [TreeViewHandle](../types/TreeViewHandle.md)

