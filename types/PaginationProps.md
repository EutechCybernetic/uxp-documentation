# PaginationProps



pagination component props


## Definition

```tsx
interface PaginationProps {
    /**
     * Total number of records
     * @example 120
     */
    total: number;

    /**
     * Page size
     * @example 10
     */
    pageSize: number;

    /**
     * Current page
     * @example 1
     */
    page: number;

    /**
     * Callback function when page size changes
     * @example Log
     * ```tsx
     * onPageSizeChange={(pageSize) => console.log('page size', pageSize)}
     * ```
     */
    onPageSizeChange: (pageSize: number) => void;

    /**
     * Callback function when page changes
     * @example Log
     * ```tsx
     * onPageChange={(page) => console.log('page', page)}
     * ```
     */
    onPageChange: (page: number) => void;

    /**
     * Number of items on the current page (used for accurate count display)
     * @default 0
     * @example 10
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

