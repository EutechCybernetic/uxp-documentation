# SimpleTableBaseProps

## Definition

```tsx
interface SimpleTableBaseProps {
    /** Columns for the table */
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

    /** Callback for saving a new item added inline (returns success/error) */
    onAddItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Show/hide the default "Add New" button at bottom (default: true if onClickAddNew or onAddItem exists) */
    showAddButton?: boolean;

    /** Custom label for the "Add New" button (default: '+ Add New') */
    addButtonLabel?: string;
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
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [RowData](../types/RowData.md)

