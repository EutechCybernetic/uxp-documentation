# Dashboard




## Installation

```tsx
import { Dashboard } from 'uxp/components';
```

## Signature

```tsx
const Dashboard: React.FunctionComponent<DashboardProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|widgets|[IWidgetInstance[]](../types/IWidgetInstance.md)|Yes|-|-|
|layouts|[ResponsiveLayouts](../types/ResponsiveLayouts.md)|No|-|-|
|onSave|(widgets: IWidgetInstance[], layouts: ResponsiveLayouts) => Promise<boolean>|Yes|-|-|
|margin|[number, number]|No|-|-|
|padding|[number, number]|No|-|-|
|isEditing|boolean|Yes|-|-|
|allowRearrange|boolean|No|-|-|
|breakpoints|Record<string, BreakPoint>|No|-|-|
|onChangeBreakPoint|(cols: number) => void|No|-|-|
|showSpacerWidget|boolean|No|-|-|
|emptyPlaceholder|{ /** * Whether to show placeholder */ show?: boolean; /** * Custom message to display */ message?: string; /** * Callback when placeholder is clicked */ onClick?: () => void; }|No|-|-|
|allowFreePositioning|boolean|No|-|-|
|allowOverlap|boolean|No|-|-|
|isBounded|boolean|No|-|-|
|transformScale|number|No|-|-|
|onContainerMount|(ref: HTMLDivElement) => void|No|-|-|
|breakpointOverride|string \| null|No|-|-|

## Related Types

- [DashboardProps](../types/DashboardProps.md)
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
- [BreakPoint](../types/BreakPoint.md)

