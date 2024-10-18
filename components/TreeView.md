# TreeView






TreeView component renders a hierarchical structure of nodes with optional icons, labels, and selectable functionality.



## Installation



```tsx
import {TreeView} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|items|TreeNode[]|Array of root nodes in the tree |
|noItemsMessage|string|Message to display when no items are available |
|showPath|boolean|If true, show connecting paths between nodes |
|renderRootNodesHorizontally|boolean|If true, render the root nodes horizontally |
|multiSelect|boolean|If true, allows multiple nodes to be selected |
|selected|TreeNode \| TreeNode[]|Currently selected node or nodes |
|onSelect|(selected: TreeNode \| TreeNode[]) => void|Callback function triggered when a node is selected |
|styles|[TreeViewStyles](../types/TreeViewStyles.md)|Custom styles for the TreeView component |
|showHeader|boolean||
|title|string \| React.ReactNode||
|enableSearch|boolean||
|onSearch|(query: string) => void||
|expandAllNodes|boolean||
|enableAdd|boolean||
|addButtonLabel|string||
|enableEdit|boolean||
|enableDelete|boolean||
|onAdd|(parentId?: string, parentPath?: string) => void||
|onEdit|(node: ExtendedTreeNode) => void||
|onDelete|(id: string) => void||
|showActionButtonOnlyOnHover|boolean||


### items



---



Array of root nodes in the tree


|type|
|-|
|TreeNode[]|


### noItemsMessage



---



Message to display when no items are available


|type|
|-|
|string|


### showPath



---



If true, show connecting paths between nodes


|type|
|-|
|boolean|


### renderRootNodesHorizontally



---



If true, render the root nodes horizontally


|type|
|-|
|boolean|


### multiSelect



---



If true, allows multiple nodes to be selected


|type|
|-|
|boolean|


### selected



---



Currently selected node or nodes


|type|
|-|
|TreeNode \| TreeNode[]|


### onSelect



---



Callback function triggered when a node is selected


|type|
|-|
|(selected: TreeNode \| TreeNode[]) => void|


### styles



---



Custom styles for the TreeView component


|type|
|-|
|[TreeViewStyles](../types/TreeViewStyles.md)|


### showHeader



---





|type|
|-|
|boolean|


### title



---





|type|
|-|
|string \| React.ReactNode|


### enableSearch



---





|type|
|-|
|boolean|


### onSearch



---





|type|
|-|
|(query: string) => void|


### expandAllNodes



---





|type|
|-|
|boolean|


### enableAdd



---





|type|
|-|
|boolean|


### addButtonLabel



---





|type|
|-|
|string|


### enableEdit



---





|type|
|-|
|boolean|


### enableDelete



---





|type|
|-|
|boolean|


### onAdd



---





|type|
|-|
|(parentId?: string, parentPath?: string) => void|


### onEdit



---





|type|
|-|
|(node: ExtendedTreeNode) => void|


### onDelete



---





|type|
|-|
|(id: string) => void|


### showActionButtonOnlyOnHover



---





|type|
|-|
|boolean|


