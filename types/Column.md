# Column


Column definition for the data table


## Definition

```tsx
export interface Column {
    /** Unique identifier for the column */
    id: string;
    /** Display text or component for column header */
    label: string | ReactNode;
    /** Custom renderer for column cell content */
    renderColumn?: (item: any, index?: number) => ReactNode;
    /** Custom renderer for editing existing items (editable mode only) */
    renderEditItem?: (item: any, update: (value: any) => void) => ReactNode;
    /** Custom renderer for creating new items (editable mode only) */
    renderNewItem?: (item: any, update: (value: any) => void) => ReactNode;
    /** Minimum width of the column in pixels */
    minWidth?: number;
    /** Maximum width of the column in pixels */
    maxWidth?: number;
    /** Callback when a cell in this column is clicked */
    onClickColumn?: (e: React.MouseEvent<HTMLDivElement>, item: any, column: Column) => void;
    /** Allows column to be resized */
    isResizable?: boolean;
    /** Allows sorting for this column */
    isSortable?: boolean;
    /** Render label vertically (rotated 90 degrees) */
    verticalLabel?: boolean;
}
```

## Usage

```tsx
import { Column } from 'uxp/components';
```

