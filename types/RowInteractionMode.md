# RowInteractionMode

Row interaction mode - mutually exclusive with inline editing


## Definition

```tsx
interface RowInteractionMode {
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, item: RowData) => void;
    onClickColumn?: (e: React.MouseEvent<HTMLDivElement>, item: RowData, column: TableColumn) => void;
    editColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onEdit?: (item: RowData) => void;
    };
    deleteColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onDelete?: (item: RowData) => Promise<void>;
    };
    /**
     * Row actions: a ⋯ menu on each row (on phones, the card's ⋯ and a swipe). Put a row's
     * actions here rather than as buttons in its cells.
     */
    actionsColumn?: {
        enable: boolean;
        rowActions: Action[] | ((item: RowData) => React.ReactNode | Action[]);
    };
    onUpdateItem?: never;
    onDeleteItem?: never;
    onReorderItems?: (reorderedData: RowData[]) => Promise<{ success: boolean, error?: string }>;
    roles?: never;
    labels?: {
        add?: string;
        saved?: string;
    };
}
```

## Usage

```tsx
import { RowInteractionMode } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)

