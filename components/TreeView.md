# TreeView




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

#### A node with `isLabel` is a group label: it is never selected, a click on its row expands or
collapses it, and it reads as a heading (bold, secondary text colour, no fill).

```tsx
tsx
<TreeView showPath items={[{ id: 'b1', label: 'IBMS 2026 · Intake A', icon: 'fal users', path: 'b1', isLabel: true, expandOnLoad: true, getChildren: [{ id: 'c1', label: 'Building Automation 101', icon: 'fal book', path: 'b1/c1', isLabel: true, expandOnLoad: true, getChildren: [{ id: 'cd', label: 'Course discussion', icon: 'fal comments', path: 'b1/c1/cd' }, { id: 'l1', label: 'Sensors', icon: 'fal file-lines', path: 'b1/c1/l1' }] }] }]} />
```

## Live preview

[Open TreeView in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-lists-tree-view-treeview--docs>)

### Variants

- [Example 2](<https://story.uxp.iviva.com/?path=/docs/data-display-lists-tree-view-treeview--docs&args=showPath%3A%21true&props=%7B%22items%22%3A%5B%7B%22id%22%3A%22b1%22%2C%22label%22%3A%22IBMS+2026+%C2%B7+Intake+A%22%2C%22icon%22%3A%22fal+users%22%2C%22path%22%3A%22b1%22%2C%22isLabel%22%3Atrue%2C%22expandOnLoad%22%3Atrue%2C%22getChildren%22%3A%5B%7B%22id%22%3A%22c1%22%2C%22label%22%3A%22Building+Automation+101%22%2C%22icon%22%3A%22fal+book%22%2C%22path%22%3A%22b1%2Fc1%22%2C%22isLabel%22%3Atrue%2C%22expandOnLoad%22%3Atrue%2C%22getChildren%22%3A%5B%7B%22id%22%3A%22cd%22%2C%22label%22%3A%22Course+discussion%22%2C%22icon%22%3A%22fal+comments%22%2C%22path%22%3A%22b1%2Fc1%2Fcd%22%7D%2C%7B%22id%22%3A%22l1%22%2C%22label%22%3A%22Sensors%22%2C%22icon%22%3A%22fal+file-lines%22%2C%22path%22%3A%22b1%2Fc1%2Fl1%22%7D%5D%7D%5D%7D%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|[TreeNode[]](../types/TreeNode.md)|Yes|-|[ { id: 'hq', label: 'Head Office', icon: 'fas building', path: 'hq', expandOnL…|
|noItemsMessage|string|No|-|-|
|showPath|boolean|No|-|-|
|renderRootNodesHorizontally|boolean|No|-|-|
|multiSelect|boolean|No|-|-|
|selected|TreeNode \| TreeNode[]|No|-|-|
|onSelect|(selected: TreeNode \| TreeNode[]) => void|No|-|Log onSelect={(selected) => console.log('selected', selected)}|
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
|canDrop|(source: TreeNode, target: TreeNode, position: DropPosition) => boolean|No|-|-|
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
- [DropPosition](../types/DropPosition.md)
- [DragState](../types/DragState.md)
- [TreeViewHandle](../types/TreeViewHandle.md)

