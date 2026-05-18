# TreeViewCompareProps




## Definition

```tsx
export interface TreeViewCompareProps {
    /**
     * Items for the left tree (source or target)
     */
    leftItems: TreeNode[];

    /**
     * Items for the right tree (source or target)
     */
    rightItems: TreeNode[];

    /**
     * Title/label for the left tree
     */
    leftTitle?: string | React.ReactNode;

    /**
     * Title/label for the right tree
     */
    rightTitle?: string | React.ReactNode;

    /**
     * Loading state for left tree
     */
    leftLoading?: boolean;

    /**
     * Loading state for right tree
     */
    rightLoading?: boolean;

    /**
     * Direction of allowed drag operations
     * 'left-to-right' | 'right-to-left' | 'both'
     */
    dragDirection?: 'left-to-right' | 'right-to-left' | 'both';


    /**
     * Callback when drag starts
     */
    onDragStart?: (node: TreeNode, sourceTree: Tree) => void;

    /**
     * Callback when a node is dropped from one tree to another
     *  sourceNode - The node being dragged
     *  parentNode - The node being dropped onto
     *  sourceNodeIndex - Index of the dropped node
     *  sibilingNodes - sibiling nodes 
     *  sourceTree - Which tree the node came from (Tree)
     *  targetTree - Which tree the node is being dropped into ('left' | 'right')
     */
    onDragEnd?: (sourceNode: TreeNode, parentNode: TreeNode, sourceNodeIndex: number, sibilingNodes: TreeNode[], sourceTree: Tree, targetTree: Tree) => void | Promise<void>;


    /**
     * Custom render function for left tree node labels
     */
    renderLeftLabel?: (node: TreeNode) => React.ReactNode;

    /**
     * Custom render function for right tree node labels
     */
    renderRightLabel?: (node: TreeNode) => React.ReactNode;

    /**
     * Custom render function for left tree node details
     */
    renderLeftDetails?: (node: TreeNode) => React.ReactNode;

    /**
     * Custom render function for right tree node details
     */
    renderRightDetails?: (node: TreeNode) => React.ReactNode;

    /**
     * Expand all nodes by default
     */
    expandAllNodes?: boolean;

    /**
     * Show connecting paths in trees
     */
    showPath?: boolean;

    /**
     * Custom styles for the trees
     */
    treeStyles?: any;

    /**
     * Show header section with titles
     */
    showHeaders?: boolean;

    /**
     * Custom validation function to determine if drop is allowed
     * returns true if drop is allowed, false otherwise
     */
    validateDrop?: (sourceNode: TreeNode, targetNode: TreeNode, sourceTree: Tree, targetTree: Tree) => boolean;

    /**
     * Custom class name for container
     */
    className?: string;

    /**
     * Custom styles for container
     */
    style?: React.CSSProperties;

    /**
     * Maximum depth of the trees
     */
    maxDepth?: number;

    /**
     * Enable search box (applied to trees based on dragDirection)
     */
    enableSearch?: boolean;

    /**
     * Callback when search is performed
     */
    onSearch?: (query: string, side: Tree) => void;

    /**
     * Enable add button (applied to trees based on dragDirection)
     */
    enableAdd?: boolean;

    /**
     * Custom label for add button
     */
    addButtonLabel?: string;

    /**
     * Callback when add button is clicked
     */
    onAdd?: (parentNode: ExtendedTreeNode | undefined, side: Tree) => void;

    /**
     * Enable edit button (applied to trees based on dragDirection)
     */
    enableEdit?: boolean;

    /**
     * Callback when edit button is clicked
     */
    onEdit?: (node: ExtendedTreeNode, side: Tree) => void;

    /**
     * Enable delete button (applied to trees based on dragDirection)
     */
    enableDelete?: boolean;

    /**
     * Callback when delete button is clicked
     */
    onDelete?: (id: string, side: Tree) => void;

    /**
     * Enable drag to reorder within same level (applied to trees based on dragDirection)
     */
    enableReordering?: boolean;

    /**
     * Callback when nodes are reordered within the same level
     */
    onReorder?: (reorderedNodes: TreeNode[], draggedNode: TreeNode, newIndex: number, parentId: string | undefined, side: Tree) => Promise<boolean>;

    /**
     * Enable drag to change parent within same tree (applied to trees based on dragDirection)
     */
    enableInternalHierarchyChange?: boolean;

    /**
     * Callback when a node is moved to a different parent within same tree
     */
    onInternalHierarchyChange?: (movedNode: TreeNode, newIndex: number, sibilings: TreeNode[], newParentId: string | null, side: Tree) => void | Promise<void>;

    /**
     * Enable multi-select (applied to trees based on dragDirection)
     */
    multiSelect?: boolean;

    /**
     * Selected items for left tree
     */
    leftSelected?: TreeNode | TreeNode[];

    /**
     * Selected items for right tree
     */
    rightSelected?: TreeNode | TreeNode[];

    /**
     * Callback when left tree selection changes
     */
    onSelect?: (selected: TreeNode | TreeNode[], side: Tree) => void;

    /**
     * Show action buttons only on hover
     */
    showActionButtonOnlyOnHover?: boolean;

    /**
     * Position of action buttons relative to the label
     */
    actionButtonsPosition?: 'inline' | 'end';

    /**
     * Custom action buttons for left tree nodes (rendered with same hover mechanism as built-in actions)
     */
    customActions?: (node: ExtendedTreeNode) => CustomActionButton[];
    /**
     * Custom action buttons for right tree nodes (rendered with same hover mechanism as built-in actions)
     */
    rightCustomActions?: (node: ExtendedTreeNode) => CustomActionButton[];
}
```

## Usage

```tsx
import { TreeViewCompareProps } from 'uxp/components';
```

## Related Types

- [TreeNode](../types/TreeNode.md)
- [Tree](../types/Tree.md)
- [ExtendedTreeNode](../types/ExtendedTreeNode.md)
- [CustomActionButton](../types/CustomActionButton.md)

