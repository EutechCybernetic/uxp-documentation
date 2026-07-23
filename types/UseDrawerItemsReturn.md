# UseDrawerItemsReturn




## Definition

```tsx
export interface UseDrawerItemsReturn {
    // Data
    items: (IWidget | IRenderUIItemProps)[]

    // Counts
    totalCount: number
    filteredCount: number

    // Loading
    isLoading: boolean
    hasMore: boolean  // For infinite scroll

    // Categories (for widgets)
    categories: WidgetCategory[]

    // Cache control
    reload: () => Promise<void>

    // Counts by filter
    counts: {
        widgets: number
        uis: number
        statuses: {
            all: number
            installed: number
            added: number
            notInstalled: number
        }
    }
}
```

## Usage

```tsx
import { UseDrawerItemsReturn } from 'uxp/components';
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
- [WidgetCategory](../types/WidgetCategory.md)

