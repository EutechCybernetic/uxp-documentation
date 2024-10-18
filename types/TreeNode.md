# TreeNode








```tsx
export interface TreeNode {
    /**
     * Unique identifier for the node
     */
    id: string,
    /**
     * Label to display for the node
     */
    label: string,
    /**
     * Optional icon for the node
     */
    icon?: string,
    /**
     * Function to render custom label content
     */
    renderLabel?: () => React.ReactNode,
    /**
     * Function to render custom details for the node
     */
    renderDetails?: () => React.ReactNode,
    /**
     * Children of the node, either as a static array or a function that returns a promise resolving to an array of nodes
     */
    getChildren?: ((node: TreeNode) => Promise<{ nodes: TreeNode[] }>) | TreeNode[],
    /**
     * If true, the node will be expanded on load
     */
    expandOnLoad?: boolean,
    /**
     * Optional styles to customize the appearance of the node
     */
    styles?: any,
    /**
     * If true, this node will be disabled
     */
    disableNode?: boolean,
    /**
     * If true, all child nodes will be disabled
     */
    disableChildNodes?: boolean,
    /**
     * If true, this node will be enabled even if the parent is disabled
     */
    enableNode?: boolean,
    /**
     * If true, child nodes will be enabled even if the parent is disabled
     */
    enableChildNode?: boolean,

    enableAddChildren?: boolean,
    enableEditNode?: boolean,
    enableDeleteNode?: boolean
}
```

## Usage



```tsx
import {TreeNode} from 'uxp/components';
```

