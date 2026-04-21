# EditableRowConfig


Configuration for enabling editable mode on table rows


## Definition

```tsx
export interface EditableRowConfig {
    /** Callback when a row update is requested */
    onUpdateRow?: (row: RowData) => Promise<boolean>;
    /** Callback when a row deletion is requested */
    onDeleteRow?: (row: RowData) => Promise<boolean>;
    /** Callback when a new row is being added */
    onAddRow?: (row: RowData) => Promise<boolean>;
    /** Callback when editing is cancelled */
    onCancelEditing?: (row: RowData) => void;
    /** Callback when new row creation is cancelled */
    onCancelNewRow?: () => void;
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
import { EditableRowConfig } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)

