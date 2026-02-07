# RowInteractionMode

Row interaction mode - mutually exclusive with inline editing


## Definition

```tsx
interface RowInteractionMode {
    /** Callback when row is clicked */
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, item: RowData) => void;

    /** Callback when column is clicked */
    onClickColumn?: (e: React.MouseEvent<HTMLDivElement>, item: RowData, column: TableColumn) => void;

    /** Edit column configuration */
    editColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onEdit?: (item: RowData) => void;
    };

    /** Delete column configuration */
    deleteColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onDelete?: (item: RowData) => Promise<void>;
    };


    /** Not allowed with row interaction */
    onUpdateItem?: never;
    onDeleteItem?: never;
    onReorderItems?: never;
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

