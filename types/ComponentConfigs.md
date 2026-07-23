# ComponentConfigs

Shared config schema — used by widgets, UIs, and backgrounds


## Definition

```tsx
export interface ComponentConfigs {
    layout?: {
        w?: number;
        h?: number;
        isDraggable?: boolean;
        isResizable?: boolean;
        maxH?: number;
        maxW?: number;
        minH?: number;
        minW?: number;
        static?: boolean;
    };
    props?: DynamicFormFieldProps[] | FormSectionProps[];
    configPanel?: React.FunctionComponent<ConfigPanelProps>;
    preLoader?: ComponentPreloader;
}
```

## Usage

```tsx
import { ComponentConfigs } from 'uxp/components';
```

## Related Types

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

