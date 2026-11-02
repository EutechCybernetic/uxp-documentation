# SimpleTableBaseProps

## Definition

```tsx
interface SimpleTableBaseProps {
    /**
     * Columns for the table
     * @example
     * [
     *   { id: 'name', label: 'Setting' },
     *   { id: 'value', label: 'Value' },
     * ]
     */
    columns: TableColumn[];

    /** Text to display when there is no data */
    noDataText?: string;

    /**
     * Suppress all internal toasts and alerts (add, save, delete, reorder).
     * Useful when the table is embedded in a larger form and notifications would be misleading.
     * @default false
     */
    disableNotifications?: boolean;

    /** Page size for pagination */
    pageSize?: number;

    /** Disable pagination */
    disablePagination?: boolean;

    /** Search configuration — passed through to TableComponent */
    search?: {
        enable?: boolean;
        fields?: string[];
    };

    /** OSC-style filter panel — passed through to TableComponent */
    filters?: FilterConfig;

    /** Action buttons — passed through to TableComponent toolbar (right side) */
    actions?: ReactNode;

    /** Initial loading state */
    loading?: boolean;

    /** Callback when "Add New" button is clicked (e.g., to open a form panel) */
    onClickAddNew?: () => void;

    /**
     * Callback for saving a new item added inline (returns success/error)
     * @example Succeeds
     * ```tsx
     * onAddItem={async (item) => ({ success: true })}
     * ```
     */
    onAddItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Show/hide the default "Add New" button at bottom (default: true if onClickAddNew or onAddItem exists) */
    showAddButton?: boolean;

    /** Custom label for the "Add New" button (default: '+ Add New') */
    addButtonLabel?: string;

    /**
     * Show a refresh button that reloads the rows (default: true).
     * Shown only when `data` is a function.
     */
    allowRefresh?: boolean;

    /**
     * How the next page loads: 'pagination' (previous / next, default) or 'infinite' (more rows load
     * as the table scrolls near its end). Ignored with `disablePagination`. With infinite paging, keep
     * `data` the same function or array between renders (`useCallback` / `useMemo`): new data starts
     * again from the first page.
     * @default 'pagination'
     */
    paging?: 'pagination' | 'infinite';

    /** Hide the column header row. It also hides by itself over a single column with no label */
    hideHeader?: boolean;

    /** Expandable rows: a chevron shows on any row whose data has a `children` array */
    expandColumn?: { enable: boolean; label?: string; width?: number };
}
```

## Usage

```tsx
import { SimpleTableBaseProps } from 'uxp/components';
```

## Related Types

- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [FilterConfig](../types/FilterConfig.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [RowData](../types/RowData.md)

