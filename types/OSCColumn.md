# OSCColumn


Column configuration for the ObjectSearchComponent table, extending the base Column interface.


## Definition

```tsx
interface OSCColumn extends Column {
    /**
     * Optional label for the column when exporting data.
     */
    exportLabel?: string;

    /**
     * Optional formatter function for custom export data formatting.
     */
    formatter?: ExportColumnFormatter;
}
```

## Usage

```tsx
import { OSCColumn } from 'uxp/components';
```

## Related Types

- [Column](../types/Column.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)

