# ExportXlsxOptions

## Definition

```tsx
export interface ExportXlsxOptions {
    sheets: XlsxSheetSpec[];
    fileName: string;
    pageSize: number;
    onProgress?: (progress: ExportProgress) => void;
    /** Cooperative cancellation — set `.aborted = true` to stop. */
    signal?: { aborted: boolean };
}
```

## Usage

```tsx
import { ExportXlsxOptions } from 'uxp/components';
```

## Related Types

- [XlsxSheetSpec](../types/XlsxSheetSpec.md)
- [ExportColumn](../types/ExportColumn.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)
- [ExportProgress](../types/ExportProgress.md)

