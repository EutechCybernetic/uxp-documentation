# ISheetViewerProps

## Definition

```tsx
interface ISheetViewerProps {
    /**
     * The URL of a CSV or spreadsheet file (csv, xlsx, xls, ods). The server must allow the request
     * from this page (same origin or CORS).
     * @example "https://example.com/files/meters.csv"
     */
    src: string;

    /**
     * The most rows shown (the first row is the header and isn't counted).
     * @default 200
     */
    maxRows?: number;

    /** Additional class name */
    className?: string;
}
```

## Usage

```tsx
import { ISheetViewerProps } from 'uxp/components';
```

