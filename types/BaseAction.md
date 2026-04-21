# BaseAction


Base configuration for an action in the ActionsListComponent.


## Definition

```tsx
export interface BaseAction {
    /**
     * Label for the action, either a string (translated via context) or a React node.
     */
    label: string | ReactNode;

    /**
     * Optional value for selection comparison.
     * Used with selectedValue prop to determine if this action is selected.
     */
    value?: any;

    /**
     * Optional FontAwesome icon identifier for the action.
     */
    icon?: string;

    /**
     * Callback function triggered when the action is clicked, receiving the associated data item.
     */
    onClick: (item: any) => Promise<void> | void;

    /**
     * Optional function to control visibility of the action based on the item data.
     * If not provided, the action is always visible.
     * @param item - The data item associated with this action
     * @returns true to show the action, false to hide it
     */
    visible?: (item: any) => boolean;
}
```

## Usage

```tsx
import { BaseAction } from 'uxp/components';
```

