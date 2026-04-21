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
    /**
     * Custom renderer for editing existing items (editable mode only).
     * The `update` callback expects the full updated item object.
     * @example
     * ```tsx
     * renderEditItem: (item, update) => (
     *   <Select
     *     selected={item.type}
     *     onChange={(newType) => update({ ...item, type: newType })}
     *   />
     * )
     * ```
     */
    renderEditItem?: (item: any, update: (updatedItem: any) => void) => ReactNode;
    /**
     * Custom renderer for creating new items (editable mode only).
     * The `update` callback expects the full updated item object.
     * @example
     * ```tsx
     * renderNewItem: (item, update) => (
     *   <ColorPicker
     *     color={item.color}
     *     onChange={(newColor) => update({ ...item, color: newColor })}
     *   />
     * )
     * ```
     */
    renderNewItem?: (item: any, update: (updatedItem: any) => void) => ReactNode;
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

