# EditableConfig


Configuration for enabling editable mode on the table


## Definition

```tsx
export interface EditableConfig {
    /** Callback when adding a new row */
    onAddItem?: (index: number, item: RowData) => Promise<boolean>;
    /** Callback when updating an existing row */
    onUpdateItem?: (index: number, item: RowData) => Promise<boolean>;
    /** Callback when deleting a row */
    onDeleteItem?: (index: number, item: RowData) => Promise<boolean>;
    /** Callback when cancelling new row creation */
    onCancelNewItem?: () => void;
    /** Callback when cancelling row edit */
    onCancelItem?: () => void;
    /** Enable drag and drop row reordering */
    onReorderItems?: (reorderedData: RowData[]) => void;
    /** Custom labels for action buttons */
    labels?: {
        delete?: string;
        save?: string;
        cancel?: string;
    };
}
```

## Usage

```tsx
import { EditableConfig } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)

