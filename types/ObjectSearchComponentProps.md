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

    /** custom classname */
    className?: string
}
```

## Usage

```tsx
import { ObjectSearchComponentProps } from 'uxp/components';
```

## Related Types

- [FilterConfig](../types/FilterConfig.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [ViewsConfig](../types/ViewsConfig.md)
- [View](../types/View.md)
- [CustomViewConfigs](../types/CustomViewConfigs.md)
- [Sort](../types/Sort.md)
- [SortOrder](../types/SortOrder.md)
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
- [AdditionaDetails](../types/AdditionaDetails.md)
- [Tab](../types/Tab.md)
- [DetailsPanelTab](../types/DetailsPanelTab.md)
- [ToolbarItem](../types/ToolbarItem.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [BaseDetailsPanelConfig](../types/BaseDetailsPanelConfig.md)
- [CustomDetailsPanelProps](../types/CustomDetailsPanelProps.md)
- [TableRowBasicProps](../types/TableRowBasicProps.md)
- [ExtendedColumn](../types/ExtendedColumn.md)
- [EditableRowConfig](../types/EditableRowConfig.md)

