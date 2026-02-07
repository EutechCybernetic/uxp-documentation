# TreeViewProps




## Definition

```tsx
export interface TreeViewProps {
    /**
     * Array of root nodes in the tree
     */
    items: TreeNode[],
    /**
     * Message to display when no items are available
     */
    noItemsMessage?: string,
    /**
     * If true, show connecting paths between nodes
     */
    showPath?: boolean,
    /**
     * If true, render the root nodes horizontally
     */
    renderRootNodesHorizontally?: boolean,
    /**
     * If true, allows multiple nodes to be selected
     */
    multiSelect?: boolean,
    /**
     * Currently selected node or nodes
     */
    selected?: TreeNode | TreeNode[],
    /**
     * Callback function triggered when a node is selected
     */
    onSelect?: (selected: TreeNode | TreeNode[]) => void,
    /**
     * Custom styles for the TreeView component
     */
    styles?: TreeViewStyles,

    /**
     * toggles the header. default false.
     */
    showHeader?: boolean

    /**
     * title to show on header
     * default empty, no header will be shown 
     */
    title?: string | React.ReactNode

    /**
     * toggle the searchbox 
     */
    enableSearch?: boolean

    /**
     * callback on seach.
     */
    onSearch?: (query: string) => void,

    /**
     * expands all nodes. use with caution. this could affect the performance
     */
    expandAllNodes?: boolean,

    /**
     * option to enable add button 
     */
    enableAdd?: boolean

    /**
     * optional label to show on add button 
     */
    addButtonLabel?: string,

    /**
     * option to enable edit button 
     */
    enableEdit?: boolean,

    /**
     * option to enable delete
     */
    enableDelete?: boolean,

    /**
     * callback on click add button
     */
    onAdd?: (parentNode?: ExtendedTreeNode) => void,

    /**
     * callback on click edit button 
     */
    onEdit?: (node: ExtendedTreeNode) => void,

    /**
     * callback on click delete
     */
    onDelete?: (id: string) => void,

    /**
     * Custom action buttons (rendered after predefined buttons)
     */
    customActions?: (node: ExtendedTreeNode) => CustomActionButton[],

    /**
     * option to hide action buttons and show on hover the node
     */
    showActionButtonOnlyOnHover?: boolean,

    /**
     * Position of action buttons relative to the label
     * 'inline' - buttons appear immediately after the label
     * 'end' - buttons appear at the far right (default)
     */
    actionButtonsPosition?: 'inline' | 'end',

    /**
     * Component-level render function for node labels (fallback if node.renderLabel is not defined)
     */
    renderLabel?: (node: TreeNode) => React.ReactNode,
    /**
     * Component-level render function for node details (fallback if node.renderDetails is not defined)
     */
    renderDetails?: (node: TreeNode) => React.ReactNode,

    /**
     * External loading state - if provided, overrides internal loading
     * Use this when you're fetching/preparing data before passing items to TreeView
     */
    loading?: boolean

    /**
     * Enable dragging nodes from this tree (this is to support drag between treeviews)
     */
    enableDrag?: boolean;

    /**
     * Enable dropping nodes into this tree (this is to support drag between treeviews)
     */
    enableDrop?: boolean;

    /**
     * Enable drag & drop for reordering nodes within the same level
     */
    enableReordering?: boolean

    /**
     * Enable drag & drop to change node hierarchy (move nodes between parents)
     */
    enableHierarchyChange?: boolean

    /**
     * Maximum depth of the tree in levels (e.g., 3 means root + 2 child levels)
     * Root is level 1, direct children are level 2, etc.
     * Prevents adding children beyond this depth
     */
    maxDepth?: number

    /**
     * External loading state during reorder operation
     */
    reorderLoading?: boolean

    /**
     * Callback when nodes are reordered within the same level
     *  reorderedNodes - Full array of nodes in new order
     *  draggedNode - The node that was dragged
     *  newIndex - New index of the dragged node
     *  parentId - ID of parent node (undefined for root level)
     */
    onReorder?: (reorderedNodes: TreeNode[], draggedNode: TreeNode, newIndex: number, parentId?: string) => Promise<boolean>

    /**
     * Callback when a node is moved to a different parent (hierarchy change)
     *  movedNode - The node that was moved
     *  newParentId - ID of new parent (null for root level)
     *  newIndex - Index within new parent's children
     */
    onHierarchyChange?: (movedNode: TreeNode, newParentId: string | null, newIndex: number) => void | Promise<void>

    /**
     * disable internal dnd context
     */
    disableInternalDndContext?: boolean

    /**
     * External drag state for cross-tree drag & drop
     */
    externalDragState?: DragState,

    /** 
     * only for comparison view 
    */
    idPrefixForComparison?: string
}
```

## Usage

```tsx
import { TreeViewProps } from 'uxp/components';
```

## Related Types

- [TreeNode](../types/TreeNode.md)
- [TreeViewStyles](../types/TreeViewStyles.md)
- [ExtendedTreeNode](../types/ExtendedTreeNode.md)
- [CustomActionButton](../types/CustomActionButton.md)
- [DragState](../types/DragState.md)
- [DropPosition](../types/DropPosition.md)

