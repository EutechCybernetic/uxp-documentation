# ExportColumn

Configuration for a single column in the export


## Definition

```tsx
export interface ExportColumn {
    /** Unique identifier for the column (row field name) */
    id: string;
    /** Display label for the column in the CSV header */
    label: string;
    /** Optional formatter function for custom value formatting */
    formatter?: ExportColumnFormatter;
}
```

## Usage

```tsx
import { ExportColumn } from 'uxp/components';
```

## Related Types

- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)

