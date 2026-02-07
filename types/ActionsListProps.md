# ActionsListProps


Props for the ActionsListComponent.


## Definition

```tsx
export interface ActionsListProps {
    /**
     * Array of actions or a function returning actions or a React node to render.
     */
    actions: Action[] | ((item?: any) => Action[] | React.ReactNode);

    /**
     * Optional data item to pass to action callbacks.
     */
    item?: any;

    /**
     * Additional CSS class names to apply to the actions list container.
     */
    className?: string;
}
```

## Usage

```tsx
import { ActionsListProps } from 'uxp/components';
```

## Related Types

- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)

