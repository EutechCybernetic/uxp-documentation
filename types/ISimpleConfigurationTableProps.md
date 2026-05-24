# ISimpleConfigurationTableProps

## Definition

```tsx
export interface ISimpleConfigurationTableProps {
    /** Context object for UXP features */
    uxpContext: IContextProvider;

    /** Function returning table data */
    data: () => Promise<RowData[]>;

    /** Text to display when there is no data */
    noDataText?: string;

    /** Columns for the editable table */
    columns: TableColumn[];

    /** Callback for adding a new item */
    onAddItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Callback for updating an existing item */
    onUpdateItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Callback for deleting an item */
    onDeleteItem?: (item: RowData) => Promise<{ success: boolean, error?: string }>;

    /** Enable drag and drop row reordering */
    onReorderItems?: (reorderedData: RowData[]) => Promise<{ success: boolean, error?: string }>;

    /** Role-based permissions */
    roles?: {
        canAdd?: () => boolean;
        canEdit?: () => boolean;
        canDelete?: () => boolean;
    };

    /** Labels for buttons and notifications */
    labels?: {
        add?: string;
        save?: string;
        cancel?: string;
        delete?: string;
        edit?: string;
        saved?: string;
        deleted?: string;
    };
}
```

## Usage

```tsx
import { ISimpleConfigurationTableProps } from 'uxp/components';
```

## Related Types

- [IContextProvider](../types/IContextProvider.md)
- [IPartialContextProvider](../types/IPartialContextProvider.md)
- [Language](../types/Language.md)
- [ICustomThemes](../types/ICustomThemes.md)
- [IThemeProps](../types/IThemeProps.md)
- [ThemeType](../types/ThemeType.md)
- [UserDetails](../types/UserDetails.md)
- [NavigationLink](../types/NavigationLink.md)
- [Routes](../types/Routes.md)
- [ConfiguredPage](../types/ConfiguredPage.md)
- [ComponentType](../types/ComponentType.md)
- [IUXPFunctions](../types/IUXPFunctions.md)
- [ViewOverride](../types/ViewOverride.md)
- [ObjectTab](../types/ObjectTab.md)
- [ObjectTabComponent](../types/ObjectTabComponent.md)
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [RowData](../types/RowData.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)

