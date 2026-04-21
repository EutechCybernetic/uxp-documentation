# ExportDataConfig

Configuration passed to the exportData function


## Definition

```tsx
export interface ExportDataConfig {
    /** Data to export, either as an array or a function to fetch paginated data */
    data: RowData[] | ((page: number, pageSize: number, query?: string, filters?: Filters, sort?: Sort) => Promise<{ items: RowData[] }>);
    /** Total number of items, either as a number or a function to fetch the count */
    total: number | ((query?: string, filters?: Filters) => Promise<number>);
    /** Array of column configurations for the export */
    columns: ExportColumn[];
    /** Number of rows to fetch per page */
    pageSize?: number;
    /** Optional filters to apply to the data */
    filters?: Filters;
    /** Optional sort configuration for the data */
    sort?: Sort;
    /** Optional search query to filter the data */
    query?: string;
    /** Optional callback to receive export progress updates */
    onProgress?: (progress: ExportProgress) => void;
    /** Default file name for the exported CSV */
    fileName?: string;
    /** Whether to show a prompt for the file name */
    showNamePrompt?: boolean;
}
```

## Usage

```tsx
import { ExportDataConfig } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [ExportColumn](../types/ExportColumn.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [ExportProgress](../types/ExportProgress.md)

