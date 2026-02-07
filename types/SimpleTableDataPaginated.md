# SimpleTableDataPaginated

Data loading variant: Paginated function


## Definition

```tsx
interface SimpleTableDataPaginated {
    data: (page: number, pageSize: number, query?: string, filters?: Filters, sort?: Sort) => Promise<{ items: RowData[] }>;
    total: number | ((query?: string, filters?: Filters) => Promise<number>);
}
```

## Usage

```tsx
import { SimpleTableDataPaginated } from 'uxp/components';
```

## Related Types

- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [RowData](../types/RowData.md)

