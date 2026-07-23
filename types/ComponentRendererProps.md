# ComponentRendererProps




## Definition

```tsx
export interface ComponentRendererProps {
    // Path A: by ID — resolves via lookupComponent + lazy script loading
    moduleId?: string;
    componentId?: string;
    type?: ComponentType;

    // Path B: pre-resolved instance — skip lookup (used by DashboardWidget, BackgroundRenderer)
    componentInstance?: ComponentInstance;

    // Shared
    configuredProps?: Record<string, any>;
    hasConfigured?: boolean;
    onConfigureRequest?: () => void;
    configNeededMessage?: string | React.ReactNode;
    additionalProps?: any;
    notFoundMessage?: string | React.ReactNode;
    isPreview?: boolean;
    onAddonInstalled?: (instance: ComponentInstance) => void;
    forceConfigView?: boolean;
}
```

## Usage

```tsx
import { ComponentRendererProps } from 'uxp/components';
```

## Related Types

- [ComponentType](../types/ComponentType.md)
- [ComponentInstance](../types/ComponentInstance.md)
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

