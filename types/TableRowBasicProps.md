# TableRowBasicProps


Base props shared across table row components


## Definition

```tsx
export interface TableRowBasicProps {
    /** Column definitions with calculated widths */
    columns: { [id: string]: ExtendedColumn };
    /** Custom cell renderer function */
    renderCell?: (row: RowData, column: ExtendedColumn) => React.ReactNode;
    /** Callback when a row is clicked */
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, row: RowData) => void;
    /** Function to determine if a row is selected */
    isRowSelected?: (row: RowData) => boolean;
    /** Callback when a row is selected */
    onSelectRow?: (row: RowData) => void;
    /** Custom renderer for child rows */
    renderChildRows?: (childRows: RowData[], rowProps: TableRowBasicProps) => React.ReactNode;
    /** Enable editable mode with callbacks */
    editable?: EditableRowConfig;
    /** Enable drag and drop sorting */
    sortable?: boolean;
    /** Unique ID for drag and drop */
    dragId?: string;
    /** Touch: swipe the row left (mobile row actions) */
    onSwipeLeft?: (row: RowData) => void;
    /** Touch: press and hold the row (mobile select mode) */
    onLongPress?: (row: RowData) => void;
    /** Select mode (mobile): a tap selects or unselects the row instead of opening it */
    selectMode?: boolean;
    /** Touch (mobile cards): the row's one action, or ⋯ for its actions sheet, at the card's top right */
    touchActions?: (row: RowData) => React.ReactNode;
}
```

## Usage

```tsx
import { TableRowBasicProps } from 'uxp/components';
```

## Related Types

- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)
- [RowData](../types/RowData.md)
- [EditableRowConfig](../types/EditableRowConfig.md)

