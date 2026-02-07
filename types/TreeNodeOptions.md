# TreeNodeOptions

## Definition

```tsx
interface TreeNodeOptions {
    leadingSlash?: boolean,
    displayPath?: {
        generate?: boolean,
        pathField?: string,
        leadingSlash?: boolean,
    },
    customLabel?: (item: any) => string | React.ReactNode,
    /**
     * If true, this node will be disabled
     */
    disableNode?: (item: any) => boolean,

    /**
     * If true, all child nodes will be disabled
     */
    disableChildNodes?: (item: any) => boolean,

    /**
     * If true, this node will be enabled even if the parent is disabled
     */
    enableNode?: (item: any) => boolean,

    /**
     * If true, child nodes will be enabled even if the parent is disabled
     */
    enableChildNode?: (item: any) => boolean,

    /**
     * If true, add children button will be enabled for this node
     */
    enableAddChildren?: (item: any) => boolean,

    /**
     * If true, edit button will be enabled for this node
     */
    enableEditNode?: (item: any) => boolean,

    /**
     * If true, delete button will be enabled for this node
     */
    enableDeleteNode?: (item: any) => boolean,
}
```

## Usage

```tsx
import { TreeNodeOptions } from 'uxp/components';
```

