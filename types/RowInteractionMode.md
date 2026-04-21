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

