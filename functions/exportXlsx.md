# exportXlsx


Build a multi-sheet .xlsx workbook in the browser and download it. Pages
through each sheet's rows, reports progress, and supports cooperative abort.


## Installation

```tsx
import { exportXlsx } from 'uxp/components';
```

## Signature

```tsx
function exportXlsx(options: ExportXlsxOptions): Promise<void>
```

## Related Types

- [ExportXlsxOptions](../types/ExportXlsxOptions.md)
- [XlsxSheetSpec](../types/XlsxSheetSpec.md)
- [ExportColumn](../types/ExportColumn.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)
- [ExportProgress](../types/ExportProgress.md)

