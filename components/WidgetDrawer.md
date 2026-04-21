# WidgetDrawer


Widget drawer modal wrapper component that handles widget initialization internally



## Installation

```tsx
import { WidgetDrawer } from 'uxp/components';
```

## Signature

```tsx
const WidgetDrawer: React.FunctionComponent<WidgetDrawerProps>
```

## Examples

```tsx
tsx
<WidgetDrawer
  show={showDrawer}
  onClose={() => setShowDrawer(false)}
  widgets={dashboardWidgets}
  layouts={dashboardLayouts}
  onChange={(event) => {
    if (event.action === 'select') {
      // Raw selection (no layout processing)
      handleRawSelection(event.items)
    } else {
      // Add or delete (with layout processing)
      setWidgets(event.widgets!)
      setLayouts(event.layouts!)
    }
    return true
  }}
  config={{ mode: 'multi' }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|widgets|[IWidgetInstance[]](../types/IWidgetInstance.md)|Yes|-|-|
|layouts|[ResponsiveLayouts](../types/ResponsiveLayouts.md)|Yes|-|-|
|onChange|(event: WidgetDrawerChangeEvent) => boolean \| Promise<boolean>|Yes|-|-|
|isBounded|boolean|No|-|-|
|maxColumns|number|No|-|-|
|config|[WidgetDrawerConfig](../types/WidgetDrawerConfig.md)|No|-|-|

## Related Types

- [WidgetDrawerProps](../types/WidgetDrawerProps.md)
- [IWidgetInstance](../types/IWidgetInstance.md)
- [ILayout](../types/ILayout.md)
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
- [ResponsiveLayouts](../types/ResponsiveLayouts.md)
- [WidgetDrawerChangeEvent](../types/WidgetDrawerChangeEvent.md)
- [IWidget](../types/IWidget.md)
- [IRenderUIItemProps](../types/IRenderUIItemProps.md)
- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [WidgetDrawerConfig](../types/WidgetDrawerConfig.md)
- [WidgetDrawerMode](../types/WidgetDrawerMode.md)
- [WidgetDrawerStatus](../types/WidgetDrawerStatus.md)

