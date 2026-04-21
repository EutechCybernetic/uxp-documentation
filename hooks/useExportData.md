# useExportData


Custom hook for streaming data to a CSV file with progress tracking and cancellation support



## Installation

```tsx
import { useExportData } from 'uxp/components';
```

## Signature

```tsx
function useExportData(): ExportResponse
```

## Examples

```tsx
tsx
const { exportData, abortExport } = useExportData();

// Start export
<button onClick={() => exportData({
  data: async (page, pageSize) => ({
    items: await fetchData(page, pageSize),
    totalCount: await fetchTotal()
  }),
  total: async () => await fetchTotal(),
  columns: [
    { id: 'name', label: 'Name' },
    { id: 'date', label: 'Date', formatter: (value) => format(new Date(value), 'yyyy-MM-dd') }
  ],
  pageSize: 100,
  fileName: 'data_export',
  showNamePrompt: true,
  onProgress: (progress) => console.log(`Progress: ${progress.progress}%`)
})}>Export Data</button>

// Cancel export
<button onClick={abortExport}>Cancel Export</button>
```

## Related Types

- [ExportResponse](../types/ExportResponse.md)
- [ExportDataConfig](../types/ExportDataConfig.md)
- [RowData](../types/RowData.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [ExportColumn](../types/ExportColumn.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [ExportProgress](../types/ExportProgress.md)

