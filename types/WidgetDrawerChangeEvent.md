# WidgetDrawerChangeEvent




## Definition

```tsx
export interface WidgetDrawerChangeEvent {
    action: 'add' | 'delete' | 'select'
    items: (IWidget | IRenderUIItemProps)[]
    type: WidgetDrawerType// Type of items being changed
    widgets?: ComponentInstance[]  // Only when layout processing happens
    layouts?: any  // Only when layout processing happens
}
```

## Usage

```tsx
import { WidgetDrawerChangeEvent } from 'uxp/components';
```

## Related Types

- [IWidget](../types/IWidget.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
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
- [IRenderUIItemProps](../types/IRenderUIItemProps.md)
- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [ComponentInstance](../types/ComponentInstance.md)
- [ComponentType](../types/ComponentType.md)
- [ILayout](../types/ILayout.md)

