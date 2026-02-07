# ActionWithChildren


Configuration for an action with nested children, extending BaseAction without onClick.


## Definition

```tsx
export interface ActionWithChildren extends Omit<BaseAction, 'onClick'> {
    /**
     * Child actions or a function returning child actions or a React node, rendered in a dropdown.
     */
    children: BaseAction[] | ((item?: any) => ReactNode | BaseAction[]);

    /**
     * Optional ref to pass to the Dropdown component for the action.
     */
    ref?: any;
}
```

## Usage

```tsx
import { ActionWithChildren } from 'uxp/components';
```

## Related Types

- [BaseAction](../types/BaseAction.md)

