# EmbeddedDashobardComponentProps


Props for the EmbeddedDashboard component


## Definition

```tsx
export interface EmbeddedDashobardComponentProps {
    /**
     * List of dashboard IDs to try loading in priority order.
     * The component will use the first ID that has a record in the database.
     *
     * Example: For an equipment details page:
     * - First check equipment-specific: "ibms/equipment/<equipmentKey>"
     * - Then check type-specific: "ibms/equipment/<equipmentType>"
     * - Finally fallback to generic: "ibms/equipment"
     *
     * Pass as: ["ibms/equipment/1", "ibms/equipment/fcu", "ibms/equipment"]
     */
    ids: string[];

    /**
     * Default configuration to use when no database record exists for any of the IDs.
     * Typically loaded from a JSON file.
     * When saving, will create a new record using the last (most generic) ID from the ids array.
     */
    defaultConfiguration?: ResponsiveWidgetLayoutConfiguration;

    /**
     * Enable edit/configure mode for the dashboard
     */
    allowToConfigure?: boolean;

    /**
     * Enable per-user-group dashboard layouts
     */
    enableUserGroupLayouts?: boolean;

    /**
     * Enable responsive breakpoint selection
     */
    enableResponsiveLayouts?: boolean;
}
```

## Usage

```tsx
import { EmbeddedDashobardComponentProps } from 'uxp/components';
```

## Related Types

- [ResponsiveWidgetLayoutConfiguration](../types/ResponsiveWidgetLayoutConfiguration.md)
- [IWidgetInstance](../types/IWidgetInstance.md)
- [ILayout](../types/ILayout.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [IConfigPanelProps](../types/IConfigPanelProps.md)
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
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [IWidgetPreloader](../types/IWidgetPreloader.md)

