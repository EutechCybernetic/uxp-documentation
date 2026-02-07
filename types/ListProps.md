# ListProps




## Definition

```tsx
interface ListProps {
    title: string | React.ReactNode,
    columns: TableColumn[],
    defaultPageSize: number,
    data: {
        isPaginated?: boolean // getData function will return paginated data. Therefore that function will handle searching filtering and sorting etc.
        getData: any[] | ((page?: number, pageSize?: number, query?: string, filters?: any) => Promise<{ items: any[] }>)
        getTotal?: (query?: string, filters?: any) => Promise<number>
        isLoading?: boolean
    },
    search?: {
        enabled: boolean
        fields?: string[]
    },
    filters?: any
    renderFilters?: React.ReactNode,
    onChangeFilters?: (data: any[]) => any[] // this will only be applicable to when not using the isPaginated option

    noItemsMessage?: string | React.ReactNode,
    addButton?: {
        label: string,
        icon?: string,
        backgroundColor?: string,
        color?: string
    },
    onDeleteItem?: (item: any) => Promise<ActionResponse>,
    minCellWidth?: number,
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, item: any) => void
    onClickColumn?: (e: React.MouseEvent<HTMLDivElement>, item: any, column: TableColumn) => void
}
```

## Usage

```tsx
import { ListProps } from 'uxp/components';
```

## Related Types

- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [ActionResponse](../types/ActionResponse.md)

