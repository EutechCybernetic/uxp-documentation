# BaseDetailsPanelConfig


Shared configuration for controlling table behavior when the details panel is open.


## Definition

```tsx
interface BaseDetailsPanelConfig {
    /**
     * Array of column IDs to hide from the main table when the details panel is open.
     */
    columnsToHide?: string[];

    /**
     * Alternative set of columns to render in the main table when the details panel is open.
     */
    columns?: OSCColumn[];
}
```

## Usage

```tsx
import { BaseDetailsPanelConfig } from 'uxp/components';
```

## Related Types

- [OSCColumn](../types/OSCColumn.md)
- [Column](../types/Column.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)

