# ObjectSearchComponentProps


Props for the ObjectSearchComponent.


## Definition

```tsx
interface ObjectSearchComponentProps {
    /**
     * Header text or component for the search component.
     */
    title?: string | ReactNode;

    /**
     * Configuration for the filter panel.
     */
    filters?: FilterConfig;

    /**
     * Configuration for custom and default views.
     */
    views?: ViewsConfig;

    /**
     * Data source for the table, either a static array or a function for dynamic fetching with pagination and search.
     */
    data: RowData[] | ((page: number, pageSize: number, query?: string, filters?: Filters, sort?: Sort) => Promise<{ items: RowData[] }>);

    /**
     * Column definitions for the table.
     */
    columns: OSCColumn[];

    /**
     * Configuration for predefined action columns like Edit, Delete, and Select.
     */
    defaultActionColumns?: DefaultActionColumnsConfig;

    /**
     * Number of items to display per page.
     */
    pageSize: number;

    /**
     * Total number of items, or a function to fetch this count dynamically.
     */
    total: number | ((query?: string, filters?: Filters) => Promise<number>);

    /**
     * Indicates if data is loading, showing a loading spinner if true.
     */
    loading?: boolean;

    /**
     * Message or component to display when no items are found.
     */
    noItemsMessage?: string | ReactNode;

    /**
     * Minimum width for all cells in pixels.
     */
    minCellWidth?: number;

    /**
     * Callback triggered when a row is clicked. Overrides details panel if defined.
     */
    onClickRow?: (e: MouseEvent<HTMLDivElement>, item: any) => void;

    /**
     * Configuration for the expandable details panel. Ignored if onClickRow is defined.
     */
    detailsPanel?: DefaultDetailsPanelProps | CustomDetailsPanelProps;

    /**
     * Field in row data used as a unique identifier for each row.
     */
    idField: string;

    /**
     * Optional field in row data whose value is appended to the URL as the `objectName` param
     * (or the custom name from `urlParams.name`) when a row is selected, and removed on close.
     * Useful when the details panel needs both the ID and a human-readable name for data fetching.
     */
    nameField?: string;

    /**
     * Optional field in row data whose value is appended to the URL as the `objectType` param
     * (or the custom name from `urlParams.type`) when a row is selected, and removed on close.
     */
    typeField?: string;

    /**
     * Custom action buttons or components for the header area.
     */
    actionButtons?: ReactNode;

    /**
     * Custom action buttons for bulk actions when rows are selected.
     */
    bulkActionButtons?: ReactNode;

    /**
     * Array of currently selected row data objects.
     */
    selected?: RowData[];

    /**
     * Callback triggered when row selection changes.
     */
    onSelect?: (selected: RowData[]) => void;

    /**
     * Custom renderer for nested child rows.
     */
    renderChildren?: (childRows: RowData[], rowProps: TableRowBasicProps) => ReactNode;

    /**
     * Optional custom cell renderer. When provided, replaces the default TableCell output for every
     * data cell. Use this to add inline editing or custom display logic per cell.
     */
    renderCell?: (row: RowData, column: ExtendedOSCColumn) => ReactNode;

    /**
     * Content to render in the summary area between the header and table.
     */
    summaryContent?: ReactNode;

    /**
     * Configuration for the search box, including fields for text search if data is a static array.
     */
    search?: {
        /**
         * Enables the search box.
         */
        enable: boolean;

        /**
         * Fields in the data to use for text search (required for static data arrays).
         */
        fields?: string[];

        /**
         * If true, collapses the search box by default.
         */
        collapsed?: boolean;
    };

    /**
     * Width of the list when the details panel is open. Accepts percentage string or pixels (15%-75%). Defaults to '50%'.
     */
    collapsedWidth?: string | number;

    /**
     * If true, appends view state to the URL for navigation.
     */
    appendToURL?: boolean;

    /**
     * URL params to remove when a new row is selected. Useful for clearing
     * sub-panel state (e.g. method, editMethod) when the parent row changes.
     */
    clearParamsOnSelect?: string[];

    /**
     * Allow users to change page size via dropdown (default: true)
     */
    allowPageSizeChange?: boolean;

    /**
     * Custom URL parameter names for this component instance. Useful for nested components to avoid param conflicts.
     */
    urlParams?: URLParamConfig;

    /** custom classname */
    className?: string

    /**
     * Fired whenever the filter panel opens or closes. Use this to pause auto-refresh
     * while the user is editing filters.
     */
    onFilterPanelToggle?: (isOpen: boolean) => void;
}
```

## Usage

```tsx
import { ObjectSearchComponentProps } from 'uxp/components';
```

## Related Types

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
- [ViewsConfig](../types/ViewsConfig.md)
- [View](../types/View.md)
- [CustomViewConfigs](../types/CustomViewConfigs.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
- [AdvancedFilterState](../types/AdvancedFilterState.md)
- [RowData](../types/RowData.md)
- [OSCColumn](../types/OSCColumn.md)
- [Column](../types/Column.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [DefaultActionColumnsConfig](../types/DefaultActionColumnsConfig.md)
- [BaseProps](../types/BaseProps.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)
- [DefaultDetailsPanelProps](../types/DefaultDetailsPanelProps.md)
- [ObjectDetailsPanelBaseProps](../types/ObjectDetailsPanelBaseProps.md)
- [DetailsContent](../types/DetailsContent.md)
- [ObjectDetailsPanelHeaderProps](../types/ObjectDetailsPanelHeaderProps.md)
- [BreadcrumbItem](../types/BreadcrumbItem.md)
- [AnalyticsCardProps](../types/AnalyticsCardProps.md)
- [AccessControl](../types/AccessControl.md)
- [DetailsPanelTab](../types/DetailsPanelTab.md)
- [ToolbarItem](../types/ToolbarItem.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [AdditionaDetails](../types/AdditionaDetails.md)
- [Tab](../types/Tab.md)
- [BaseDetailsPanelConfig](../types/BaseDetailsPanelConfig.md)
- [CustomDetailsPanelProps](../types/CustomDetailsPanelProps.md)
- [TableRowBasicProps](../types/TableRowBasicProps.md)
- [ExtendedColumn](../types/ExtendedColumn.md)
- [EditableRowConfig](../types/EditableRowConfig.md)
- [ExtendedOSCColumn](../types/ExtendedOSCColumn.md)
- [URLParamConfig](../types/URLParamConfig.md)

