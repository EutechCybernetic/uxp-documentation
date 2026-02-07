# RowData


Represents a single row of data in the table


## Definition

```tsx
export interface RowData {
    /** Allow any property on the row data */
    [key: string]: any;
    /** Optional child rows that can be expanded */
    children?: RowData[] | ((item: RowData) => Promise<RowData[]>);
    /** Internal flag to mark a row as newly created (for editable mode) */
    __newitem__?: boolean;
}
```

## Usage

```tsx
import { RowData } from 'uxp/components';
```

