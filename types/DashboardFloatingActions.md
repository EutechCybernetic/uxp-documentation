# DashboardFloatingActions

## Definition

```tsx
export interface DashboardFloatingActions extends FloatingActionBaseProps {
    type: FloatingActionSectionType.Dashboard;
    /** Current dashboard widgets */
    widgets: IWidgetInstance[];
    /** Current dashboard layouts */
    layouts: ResponsiveLayouts;
    /** toggles the edit button */
    enableEdit: boolean;
    /** toggles the add button */
    enableAdd: boolean;
    /** Control when add button is visible */
    addButtonVisibility?: FloatingActionButtonVisibility;
    /** Callback to handle widget drawer changes (unified event handler) */
    onChangeWidgetDrawer: (event: WidgetDrawerChangeEvent) => Promise<boolean>;
    /** Restrict widgets to grid boundaries (affects new widget positioning) */
    isBounded?: boolean;
    /** Maximum number of columns in current breakpoint */
    maxColumns?: number;
    /** Widget drawer configuration */
    widgetDrawerConfig?: WidgetDrawerConfig;
    /** Optional callback to receive control methods for programmatic control */
    onRegister?: (controls: DashboardFloatingActionsControls) => void;
}
```

## Usage

```tsx
import { DashboardFloatingActions } from 'uxp/components';
```

## Related Types

- [FloatingActionBaseProps](../types/FloatingActionBaseProps.md)
- [CustomFloatingAction](../types/CustomFloatingAction.md)
- [FloatingActionButtonVisibility](../types/FloatingActionButtonVisibility.md)
- [FloatingActionSectionType](../types/FloatingActionSectionType.md)
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
- [ResponsiveLayouts](../types/ResponsiveLayouts.md)
- [WidgetDrawerChangeEvent](../types/WidgetDrawerChangeEvent.md)
- [IWidget](../types/IWidget.md)
- [IRenderUIItemProps](../types/IRenderUIItemProps.md)
- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [WidgetDrawerConfig](../types/WidgetDrawerConfig.md)
- [WidgetDrawerMode](../types/WidgetDrawerMode.md)
- [WidgetDrawerStatus](../types/WidgetDrawerStatus.md)
- [DashboardFloatingActionsControls](../types/DashboardFloatingActionsControls.md)

