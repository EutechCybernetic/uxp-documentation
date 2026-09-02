# ExportSheet


One sheet of a multi-sheet Excel export.


## Definition

```tsx
export interface ExportSheet {
    /** Sheet/tab name (sanitized to Excel's 31-char, no `: \ / ? * [ ]` rules). */
    name: string;
    /** Data for this sheet — array or paginated fetcher. */
    data: ExportRowSource;
    /** Total rows for this sheet — number or async count. */
    total: ExportTotalSource;
    /** Column configuration for this sheet. */
    columns: ExportColumn[];
}
```

## Usage

```tsx
import { ExportSheet } from 'uxp/components';
```

## Related Types

- [ExportRowSource](../types/ExportRowSource.md)
- [RowData](../types/RowData.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [ExportTotalSource](../types/ExportTotalSource.md)
- [ExportColumn](../types/ExportColumn.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)

