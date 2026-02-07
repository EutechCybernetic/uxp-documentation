# CustomActionButton




## Definition

```tsx
export interface CustomActionButton {
    /**
     * Icon to display on the button
     */
    icon: string;
    /**
     * Callback when button is clicked
     */
    onClick: (node: ExtendedTreeNode) => void;
    /**
     * Optional tooltip text
     */
    tooltip?: string;
}
```

## Usage

```tsx
import { CustomActionButton } from 'uxp/components';
```

## Related Types

- [ExtendedTreeNode](../types/ExtendedTreeNode.md)
- [TreeNode](../types/TreeNode.md)

