# UseWidgetsReturn




## Definition

```tsx
export interface UseWidgetsReturn {
    /**
     * All available widgets
     */
    widgets: IWidget[]

    /**
     * All available custom UIs
     */
    uis: IRenderUIItemProps[]

    /**
     * Find a widget by ID
     */
    findWidgetById: (id: string) => IWidget | undefined

    /**
     * Find a custom UI by ID
     */
    findUIById: (id: string) => IRenderUIItemProps | undefined

    /**
     * find widget or ui by id
     */
    findDetailsById: (id: string) => { type: 'widget' | 'ui', details: IWidget | IRenderUIItemProps | undefined }

    /**
     * Reload widget and UI data from source
     */
    reload: () => Promise<void>

    /**
     * Loading state
     */
    isLoading: boolean
}
```

## Usage

```tsx
import { UseWidgetsReturn } from 'uxp/components';
```

## Related Types

- [IWidget](../types/IWidget.md)
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
- [IRenderUIItemProps](../types/IRenderUIItemProps.md)

