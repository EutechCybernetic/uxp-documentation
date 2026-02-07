# InlineEditingMode

Inline editing mode - mutually exclusive with row interaction


## Definition

```tsx
interface InlineEditingMode {
    /** Callback for updating an existing item */
    onUpdateItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Callback for deleting an item */
    onDeleteItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Enable drag and drop row reordering */
    onReorderItems?: (reorderedData: RowData[]) => Promise<{ success: boolean, error?: string }>;

    /** Role-based permissions */
    roles?: {
        canAdd?: () => boolean;
        canEdit?: () => boolean;
        canDelete?: () => boolean;
    };

    /** Labels for buttons and notifications */
    labels?: {
        add?: string;
        save?: string;
        cancel?: string;
        delete?: string;
        edit?: string;
        saved?: string;
        deleted?: string;
    };

    /** Not allowed with inline editing */
    onClickRow?: never;
    onClickColumn?: never;
    editColumn?: never,
    deleteColumn?: never
}
```

## Usage

```tsx
import { InlineEditingMode } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)

