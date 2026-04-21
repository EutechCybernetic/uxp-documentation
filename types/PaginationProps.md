# PaginationProps



pagination component props


## Definition

```tsx
interface PaginationProps {
    /**
     * Total number of records
     */
    total: number;

    /**
     * Page size
     */
    pageSize: number;

    /**
     * Current page
     */
    page: number;

    /**
     * Callback function when page size changes
     */
    onPageSizeChange: (pageSize: number) => void;

    /**
     * Callback function when page changes
     */
    onPageChange: (page: number) => void;

    /**
     * Number of items on the current page (used for accurate count display)
     */
    dataLength?: number;

    /**
     * Show loading skeleton instead of controls
     */
    loading?: boolean;

    /**
     * Allow users to change page size via dropdown (default: true)
     */
    allowPageSizeChange?: boolean;
}
```

## Usage

```tsx
import { PaginationProps } from 'uxp/components';
```

