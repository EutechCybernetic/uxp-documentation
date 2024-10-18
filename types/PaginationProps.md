# PaginationProps





pagination component props




```tsx
interface PaginationProps {
    /**
     * Total nunmber of records 
     */
    total: number;
    /**
     * Page size. Expected values are 10, 25, 50, 100
     */
    pageSize: number;
    /**
     * Current page 
     */
    page: number;
    /**
     * Callback function when page size changes 
     */
    onPageSizeChange: (pageSize: number) => void
    /**
     * Callback fucntion when page changes 
     */
    onPageChange: (page: number) => void
}
```

## Usage



```tsx
import {PaginationProps} from 'uxp/components';
```

