# UseDrawerItemsOptions




## Definition

```tsx
export interface UseDrawerItemsOptions {
    // Search
    searchQuery?: string

    // Filters
    type?: WidgetDrawerType
    status?: WidgetDrawerStatus
    category?: string

    // Pagination (for widgets)
    page?: number

    // Context
    existingWidgets?: ComponentInstance[]

    // Configuration
    enableUIs?: boolean  // Default true, can disable UIs in prod
}
```

## Usage

```tsx
import { UseDrawerItemsOptions } from 'uxp/components';
```

## Related Types

- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [WidgetDrawerStatus](../types/WidgetDrawerStatus.md)
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

