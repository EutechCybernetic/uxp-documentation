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

