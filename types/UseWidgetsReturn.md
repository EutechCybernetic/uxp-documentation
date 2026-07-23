# UseWidgetsReturn




## Definition

```tsx
export interface UseWidgetsReturn {
    /**
     * All available widgets
     */
    widgets: IWidget[]

    /**
     * All available custom UIs
     */
    uis: IRenderUIItemProps[]

    /**
     * Find a widget by ID
     */
    findWidgetById: (id: string) => IWidget | undefined

    /**
     * Find a custom UI by ID
     */
    findUIById: (id: string) => IRenderUIItemProps | undefined

    /**
     * find widget or ui by id
     */
    findDetailsById: (id: string) => { type: 'widget' | 'ui', details: IWidget | IRenderUIItemProps | undefined }

    /**
     * Reload widget and UI data from source
     */
    reload: () => Promise<void>

    /**
     * Loading state
     */
    isLoading: boolean
}
```

## Usage

```tsx
import { UseWidgetsReturn } from 'uxp/components';
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

