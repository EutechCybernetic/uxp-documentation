# TableComponentProps








```tsx
interface TableComponentProps {
    /**
     * data for the table 
     * can pass a plat list of data or a function that will support pagination 
     */
    data: any[] | ((page: number, pageSize: number) => Promise<{ items: any[] }>);
    /**
     * columns definitions
     */
    columns: Column[];
    /**
     * initial page size , can be change from the pagination component 
     */
    pageSize: number,
    /**
     * total number of records 
     */
    total: number | (() => Promise<number>)
    /**
     * loading state if require 
     */
    loading?: boolean,
    /**
     * messge to show when no items found 
     */
    noItemsMessage?: string | React.ReactNode,
    /**
     * this adds a edit column in to the table  
     */
    editColumn?: {
        enable: boolean,
        label?: string,
        renderColumn?: (item: any) => React.ReactNode,
        onEdit?: (item: any) => void,
    },
    /**
     * this adds a edit column in to the table  
     * 
     */
    deleteColumn?: {
        enable: boolean,
        label?: string,
        renderColumn?: (item: any) => React.ReactNode,
        onDelete?: (item: any) => Promise<void>,
    }
    minCellWidth?: number
}
```

## Usage



```tsx
import {TableComponentProps} from 'uxp/components';
```

