# IWidget

## Definition

```tsx
export interface IWidget {
    id: string,
    name: string,
    title?: string,
    label?: string,
    description?: string,
    tags?: string[],
    widget: any,
    configs?: IWidgetConfigs,
    installed?: boolean,
    deleted?: boolean,
    isNew?: string,
    icon?: string,
    vendor?: string,
    sourceUrl?: string,
    defaultProps?: { [propName: string]: any }
    external?: {
        styles?: { [key: string]: string }
        scripts?: { [key: string]: string }
    },
    isTemplate?: boolean,
    isDefaultTemplate?: boolean,
    props?: { [key: string]: any }
    templateKey?: string
    templateType?: string,
    category?: string,
    usecaseId?: string,
    usecaseName?: string,
    definitionPath?: string,
    localizedName?: string,
    localizedDescription?: string
}
```

## Usage

```tsx
import { IWidget } from 'uxp/components';
```

## Related Types

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

