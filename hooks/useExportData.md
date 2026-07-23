# useExportData


Custom hook for streaming table data to a CSV file with progress tracking
and cancellation.

The download starts immediately when the export begins and streams as data
is fetched; the export keeps running while the user navigates within the
app (a "don't refresh" banner shows meanwhile). A hard page reload cancels
a running export.



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

<button onClick={() => exportData({
  data: async (page, pageSize) => ({ items: await fetchData(page, pageSize) }),
  total: async () => await fetchTotal(),
  columns: [
    { id: 'name', label: 'Name' },
    { id: 'status', label: 'Status', formatter: (v) => v == '0' ? 'Active' : 'Inactive' }
  ],
  pageSize: 500,
  fileName: 'data_export'
})}>Export Data</button>

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

