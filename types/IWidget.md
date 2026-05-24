# IWidget

## Definition

```tsx
export interface IWidget {
    id: string,
    name: string,
    title?: string,
    label?: string,
    description?: string,
    tags?: string[],
    widget: any,
    configs?: IWidgetConfigs,
    installed?: boolean,
    deleted?: boolean,
    isNew?: string,
    icon?: string,
    vendor?: string,
    sourceUrl?: string,
    defaultProps?: { [propName: string]: any }
    external?: {
        styles?: { [key: string]: string }
        scripts?: { [key: string]: string }
    },
    isTemplate?: boolean,
    isDefaultTemplate?: boolean,
    props?: { [key: string]: any }
    templateKey?: string
    templateType?: string,
    category?: string,
    usecaseId?: string,
    usecaseName?: string,
    definitionPath?: string,
    localizedName?: string,
    localizedDescription?: string
}
```

## Usage

```tsx
import { IWidget } from 'uxp/components';
```

## Related Types

- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [ComponentConfigs](../types/ComponentConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [ConfigPanelProps](../types/ConfigPanelProps.md)
- [ComponentPreloader](../types/ComponentPreloader.md)

