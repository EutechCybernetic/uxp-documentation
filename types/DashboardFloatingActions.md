# DashboardFloatingActions

## Definition

```tsx
export interface DashboardFloatingActions extends FloatingActionBaseProps {
    type: FloatingActionSectionType.Dashboard;
    /** Current dashboard widgets */
    widgets: ComponentInstance[];
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
- [ComponentInstance](../types/ComponentInstance.md)
- [ComponentType](../types/ComponentType.md)
- [ComponentConfigs](../types/ComponentConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [ConfigPanelProps](../types/ConfigPanelProps.md)
- [ComponentPreloader](../types/ComponentPreloader.md)
- [ILayout](../types/ILayout.md)
- [ResponsiveLayouts](../types/ResponsiveLayouts.md)
- [WidgetDrawerChangeEvent](../types/WidgetDrawerChangeEvent.md)
- [IWidget](../types/IWidget.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [IRenderUIItemProps](../types/IRenderUIItemProps.md)
- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [WidgetDrawerConfig](../types/WidgetDrawerConfig.md)
- [WidgetDrawerMode](../types/WidgetDrawerMode.md)
- [WidgetDrawerStatus](../types/WidgetDrawerStatus.md)
- [DashboardFloatingActionsControls](../types/DashboardFloatingActionsControls.md)

