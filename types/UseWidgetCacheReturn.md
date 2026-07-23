# UseWidgetCacheReturn




## Definition

```tsx
export interface UseWidgetCacheReturn {
    allWidgets: IWidget[]
    allUIs: IRenderUIItemProps[]
    allCategories: WidgetCategory[]
    isLoading: boolean
    reload: () => Promise<void>
    invalidateCache: () => void
}
```

## Usage

```tsx
import { UseWidgetCacheReturn } from 'uxp/components';
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

