# IWidgetInstance

## Definition

```tsx
export interface IWidgetInstance {
    _id: string,
    id: string,
    key: string,
    name: string,
    widget: any,
    props?: { [key: string]: any },
    layout: ILayout | any,
    configs?: IWidgetConfigs,
    hasConfigured: boolean,
    defaultProps?: { [propName: string]: any }
    external?: {
        styles?: { [key: string]: string }
        scripts?: { [key: string]: string }
    }
    sourceUrl?: string,
    installed?: boolean,
    isTemplate?: boolean,
    isDefaultTemplate?: boolean,
    templateKey?: string
    templateType?: string
    category?: string,
    usecaseId?: string,
    usecaseName?: string,
    definitionPath?: string,
    description?: string
    preloaded?: boolean // indicates a widget has been loaded ,
    isNotAvalable?: boolean,
    direction?: 'ltr' | 'rtl',
    localizedName?: string,
    localizedDescription?: string
}
```

## Usage

```tsx
import { IWidgetInstance } from 'uxp/components';
```

## Related Types

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

