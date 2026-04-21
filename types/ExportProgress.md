# ExportProgress

Progress information for the export process


## Definition

```tsx
export interface ExportProgress {
    /** Indicates if the export is in progress */
    isExporting: boolean;
    /** Export progress percentage (0-100) */
    progress: number;
    /** Current page being processed */
    currentPage: number;
    /** Total number of rows to export */
    totalRows: number;
    /** Number of rows processed so far */
    processedRows: number;
}
```

## Usage

```tsx
import { ExportProgress } from 'uxp/components';
```

