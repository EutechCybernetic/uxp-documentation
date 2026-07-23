# ExtendedOSCColumn


Extended column configuration with calculated width for the ObjectSearchComponent table.


## Definition

```tsx
interface ExtendedOSCColumn extends OSCColumn {
    /**
     * Actual width of the column in pixels after calculations.
     */
    width: number;
}
```

## Usage

```tsx
import { ExtendedOSCColumn } from 'uxp/components';
```

## Related Types

- [OSCColumn](../types/OSCColumn.md)
- [Column](../types/Column.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)

