# undefined

A single data source (array or paginated fetcher).


## Definition

```tsx
type ExportRowSource = RowData[] | ((page: number, pageSize: number, query?: string, filters?: Filters, sort?: Sort) => Promise<{ items: RowData[] }>);
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

