# TableComponentProps


Props for the TableComponent.


## Definition

```tsx
export interface TableComponentProps {
    /**
     * Array of data objects or a function to fetch paginated data
     * @example
     * [
     *   { id: 1, name: 'Chiller 01', status: 'Running', location: 'Level 1' },
     *   { id: 2, name: 'Chiller 02', status: 'Stopped', location: 'Level 1' },
     *   { id: 3, name: 'AHU 01', status: 'Running', location: 'Level 2' },
     *   { id: 4, name: 'AHU 02', status: 'Fault', location: 'Level 2' },
     *   { id: 5, name: 'Pump 01', status: 'Running', location: 'Basement' },
     *   { id: 6, name: 'Pump 02', status: 'Running', location: 'Basement' },
     *   { id: 7, name: 'Boiler 01', status: 'Stopped', location: 'Roof' },
     * ]
     */
    data: RowData[] | ((page: number, pageSize: number, query?: string, filters?: Filters, sort?: Sort) => Promise<{ items: RowData[] }>);

    /**
     * List of columns to display
     * @example
     * [
     *   { id: 'name', label: 'Name' },
     *   { id: 'status', label: 'Status' },
     *   { id: 'location', label: 'Location' },
     * ]
     */
    columns: TableColumn[];

    /**
     * Number of rows per page
     * @example 5
     */
    pageSize: number;

    /**
     * Total number of items or a function returning the total
     * @example 7
     */
    total: number | ((query?: string, filters?: Filters) => Promise<number>);

    /** Loading state */
    loading?: boolean;

    /** Message to show when there are no items */
    noItemsMessage?: string | React.ReactNode;

    /** Edit column configuration */
    editColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onEdit?: (item: RowData) => void;
    };

    /** Delete column configuration */
    deleteColumn?: {
        enable: boolean;
        label?: string;
        renderColumn?: (item: RowData) => React.ReactNode;
        onDelete?: (item: RowData) => Promise<void>;
    };

    /**
     * Row actions: a ⋯ menu on each row (on phones, the card's ⋯ and a swipe). Put a row's actions
     * here rather than as buttons in its cells.
     * @example
     * ```tsx
     * actionsColumn={{ enable: true, rowActions: [
     *     { label: 'Edit', icon: 'fal pencil', onClick: (row) => edit(row) },
     *     { label: 'Delete', icon: 'fal trash', onClick: (row) => remove(row) },
     * ] }}
     * ```
     */
    actionsColumn?: {
        enable: boolean;
        rowActions: Action[] | ((item: RowData) => React.ReactNode | Action[]);
    };

    /** Enable expandable rows — a chevron appears on any row whose data has a `children` array. */
    expandColumn?: { enable: boolean; label?: string; width?: number };

    /**
     * Minimum width for any table cell
     * @default 100
     */
    minCellWidth?: number;

    /** Callback when a row is clicked */
    onClickRow?: (e: React.MouseEvent<HTMLDivElement>, item: RowData) => void;

    /** Callback when a cell/column is clicked */
    onClickColumn?: (e: React.MouseEvent<HTMLDivElement>, item: RowData, column: TableColumn) => void;

    /** Disable pagination and show all items */
    disablePagination?: boolean;

    /** Enable inline editing mode with callbacks */
    editable?: EditableConfig;

    /** Search configuration */
    search?: {
        enable: boolean;
        /** Fields to search (required for static array data) */
        fields?: string[];
    };

    /** OSC-style filter panel configuration */
    filters?: FilterConfig;

    /** Custom action buttons rendered in the toolbar (right side) */
    actionButtons?: ReactNode;

    /** Content rendered as the last row inside the table card (e.g. "+ Add New") */
    addNewRow?: ReactNode;

    /**
     * Show a refresh button before the page count, or alone when pagination is off (default: true).
     * Shown only when `data` is a function or `onRefresh` is given.
     */
    allowRefresh?: boolean;

    /** Called by the refresh button instead of reloading `data`. For a parent that loads the rows itself. */
    onRefresh?: () => void;

    /**
     * Phones: the toolbar's add button calls this (tables that open their own form). Tables with
     * inline adding (`editable.onAddItem` and an `addNewRow`) get the add button by themselves:
     * it opens the row form.
     */
    onAddNew?: () => void;

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

    /**
     * Rows shown after the loaded rows, outside paging (SimpleConfigurationTable's row being added
     * inline). Not counted in the total.
     */
    extraRows?: RowData[];
}
```

## Usage

```tsx
import { TableComponentProps } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)
- [EditableConfig](../types/EditableConfig.md)
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

