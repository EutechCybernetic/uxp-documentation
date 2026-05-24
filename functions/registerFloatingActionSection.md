# registerFloatingActionSection


Register a floating action section

section - Section configuration



## Installation

```tsx
import { registerFloatingActionSection } from 'uxp/components';
```

## Signature

```tsx
function registerFloatingActionSection(section: FloatingActionSection): void
```

## Examples

```tsx
typescript
registerFloatingActionSection({
  id: 'page',
  type: 'page',
  icon: 'phl pencil',
  label: 'Edit Page',
  isActive: isEditing,
  onToggle: () => setIsEditing(!isEditing),
  render: () => <ButtonComponent ... />
});
```

## Related Types

- [FloatingActionSection](../types/FloatingActionSection.md)
- [DashboardFloatingActions](../types/DashboardFloatingActions.md)
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
- [PageFloatingActions](../types/PageFloatingActions.md)

