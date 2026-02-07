# useWidgets


Public API hook for accessing widgets and UIs throughout the application

Use this hook when you need to:
- Get list of all widgets or UIs
- Look up a widget/UI by ID (e.g., for configuration forms)
- Reload widget/UI data

For widget drawer specific features (filtering, pagination, etc.) use useDrawerItems instead



## Installation

```tsx
import { useWidgets } from 'uxp/components';
```

## Signature

```tsx
function useWidgets(options?: UseWidgetCacheOptions): UseWidgetsReturn
```

## Examples

```tsx
typescript
const { widgets, findWidgetById, reload, isLoading } = useWidgets()

// Get all widgets
const allWidgets = widgets

// Find specific widget
const myWidget = findWidgetById('my-widget-id')

// Reload data
await reload()
```

## Related Types

- [UseWidgetCacheOptions](../types/UseWidgetCacheOptions.md)
- [UseWidgetsReturn](../types/UseWidgetsReturn.md)
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

