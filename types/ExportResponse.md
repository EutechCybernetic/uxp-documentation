# ExportResponse

Return type for the useExportData hook


## Definition

```tsx
export type ExportResponse = {
    /** Initiates the data export process */
    exportData: (config: ExportDataConfig) => Promise<void>;
    /** Aborts the ongoing export process */
    abortExport: () => void;
};
```

## Usage

```tsx
import { ExportResponse } from 'uxp/components';
```

