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
     * Optional FontAwesome icon identifier for the action.
     */
    icon?: string;

    /**
     * Callback function triggered when the action is clicked, receiving the associated data item.
     */
    onClick: (item: any) => Promise<void>;
}
```

## Usage

```tsx
import { BaseAction } from 'uxp/components';
```

