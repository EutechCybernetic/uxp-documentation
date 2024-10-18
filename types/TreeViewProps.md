# TreeViewProps








```tsx
interface TreeViewProps {
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

    showHeader?: boolean
    title?: string | React.ReactNode
    enableSearch?: boolean
    onSearch?: (query: string) => void,

    expandAllNodes?: boolean,

    enableAdd?: boolean
    addButtonLabel?: string,
    enableEdit?: boolean,
    enableDelete?: boolean,

    onAdd?: (parentId?: string, parentPath?: string) => void,
    onEdit?: (node: ExtendedTreeNode) => void,
    onDelete?: (id: string) => void,
    showActionButtonOnlyOnHover?: boolean
}
```

## Usage



```tsx
import {TreeViewProps} from 'uxp/components';
```

