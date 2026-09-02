# ExportDataConfig

Configuration passed to the exportData function


## Definition

```tsx
export interface ExportDataConfig {
    /** Data to export, either as an array or a function to fetch paginated data.
     *  Optional when `sheets` is provided. */
    data?: ExportRowSource;
    /** Total number of items, either as a number or a function to fetch the count.
     *  Optional when `sheets` is provided. */
    total?: ExportTotalSource;
    /** Array of column configurations for the export. Optional when `sheets` is provided. */
    columns?: ExportColumn[];
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
    /** Default file name for the exported file (extension is added automatically) */
    fileName?: string;
    /** Whether to show a prompt for the file name */
    showNamePrompt?: boolean;
    /** Output format. Defaults to 'csv' (streamed). 'xlsx' builds an in-memory
     *  workbook client-side (required for multiple sheets). */
    format?: 'csv' | 'xlsx';
    /** Multiple sheets for an Excel export. When set, output is always .xlsx and
     *  `data`/`columns`/`total` at the top level are ignored. */
    sheets?: ExportSheet[];
}
```

## Usage

```tsx
import { ExportDataConfig } from 'uxp/components';
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
- [ExportProgress](../types/ExportProgress.md)
- [ExportSheet](../types/ExportSheet.md)

