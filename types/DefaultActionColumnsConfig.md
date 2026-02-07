# DefaultActionColumnsConfig


Configuration for the default action columns (Edit, Delete, Select, etc.).


## Definition

```tsx
interface DefaultActionColumnsConfig {
    /**
     * Configuration for the default 'Edit' action column.
     */
    editColumn?: BaseProps & {
        /**
         * Custom renderer for the edit column.
         */
        renderColumn?: (item: any) => React.ReactNode;

        /**
         * Callback triggered when the edit action is performed.
         */
        onEdit?: (item: any) => void;
    };

    /**
     * Configuration for the default 'Delete' action column.
     */
    deleteColumn?: BaseProps & {
        /**
         * Custom renderer for the delete column.
         */
        renderColumn?: (item: any) => React.ReactNode;

        /**
         * Callback triggered when the delete action is performed.
         */
        onDelete?: (item: any) => Promise<void>;
    };

    /**
     * Configuration for the generic 'Actions' dropdown column for multiple row actions.
     */
    actionsColumn?: BaseProps & {
        /**
         * Actions or renderer for row-specific actions.
         */
        rowActions?: Action[] | ((item: any) => ReactNode | Action[]);

        /**
         * Configuration for header actions like column customization or sorting.
         */
        headerActions?: {
            /**
             * Enables column customization in the actions dropdown.
             */
            customiseColumns?: boolean;

            /**
             * Enables text clipping options in the actions dropdown.
             */
            clipOverflowText?: boolean;

            /**
             * Enables sorting options in the actions dropdown.
             */
            sort?: boolean;

            /**
             * Enables multi-column sorting if sort is enabled.
             */
            multiColumnSort?: boolean;
        };
    };

    /**
     * Configuration for the row selection checkbox column.
     */
    selectColumn?: BaseProps;

    /**
     * Configuration for the row expansion column (used for showing child rows).
     */
    expandColumn?: BaseProps;
}
```

## Usage

```tsx
import { DefaultActionColumnsConfig } from 'uxp/components';
```

## Related Types

- [BaseProps](../types/BaseProps.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)

