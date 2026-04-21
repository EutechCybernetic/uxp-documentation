# AddOnContextType


Context type for the AddOnContext, providing add-on data and utility functions.


## Definition

```tsx
interface AddOnContextType {
    /**
     * Base URL for add-on assets stored in S3.
     */
    AddOnS3BaseUrl: string;

    /**
     * Array of available add-ons.
     */
    addOns: IAddOn[];

    /**
     * Array of installed add-ons.
     */
    installedAddOns: IInstalledAddOn[];

    /**
     * Checks if a module ID corresponds to an add-on.
     */
    isAddOn: (moduleId: string) => boolean;

    /**
     * Retrieves details for an add-on by its module ID, or null if not found.
     */
    getAddOnDetails: (moduleId: string) => IAddOn | null;

    /**
     * Checks if an add-on is installed and configured.
     */
    isAddOnInstalledAndConfigured: (moduleId: string) => { installed: boolean; configured: boolean };

    /**
     * Gets the thumbnail image path for an add-on by its module ID, or null if not found.
     */
    getThunmbNailImagePath: (moduleId: string) => string | null;

    /**
     * Checks if configuration is required for an add-on.
     */
    isConfigurationRequired: (moduleId: string) => boolean;

    /**
     * Refreshes the list of installed add-ons.
     */
    refreshInstalledAddOns: () => Promise<void>;

    /**
     * Gets the name of an add-on from a widget or module ID, or null if not found.
     */
    getAddOnName: (widget?: IWidget, moduleId?: string) => string | null;
}
```

## Usage

```tsx
import { AddOnContextType } from 'uxp/components';
```

## Related Types

- [IAddOn](../types/IAddOn.md)
- [IInstalledAddOn](../types/IInstalledAddOn.md)
- [IWidget](../types/IWidget.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
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

