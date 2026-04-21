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
     * Optional value to compare against action.value for highlighting selected state.
     * When action.value === selectedValue, the action will be styled as selected.
     */
    selectedValue?: any;

    /**
     * Additional CSS class names to apply to the actions list container.
     */
    className?: string;

    /**
     * Optional ref to the parent dropdown, used to close it after an action is clicked.
     * @internal
     */
    parentDropdownRef?: React.RefObject<DropdownHandlers>;
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
- [DropdownHandlers](../types/DropdownHandlers.md)

