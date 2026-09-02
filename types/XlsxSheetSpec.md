# XlsxSheetSpec

## Definition

```tsx
export interface XlsxSheetSpec {
    name: string;
    columns: ExportColumn[];
    total: number;
    fetchPage: (page: number) => Promise<{ items: RowData[] }>;
}
```

## Usage

```tsx
import { XlsxSheetSpec } from 'uxp/components';
```

## Related Types

- [ExportColumn](../types/ExportColumn.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)

