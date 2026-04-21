# InlineEditingMode

Inline editing mode - mutually exclusive with row interaction


## Definition

```tsx
interface InlineEditingMode {
    onUpdateItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;
    onDeleteItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;
    onReorderItems?: (reorderedData: RowData[]) => Promise<{ success: boolean, error?: string }>;
    roles?: {
        canAdd?: () => boolean;
        canEdit?: () => boolean;
        canDelete?: () => boolean;
    };
    labels?: {
        add?: string;
        save?: string;
        cancel?: string;
        delete?: string;
        edit?: string;
        saved?: string;
        deleted?: string;
    };
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

