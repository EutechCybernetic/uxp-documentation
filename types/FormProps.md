# FormProps




## Definition

```tsx
interface FormProps extends Omit<DynamicFormProps, 'renderOptions' | 'onSubmit'> {
    title: string;
    onSubmit: (data: IFormData) => Promise<ActionResponse>
    afterSave?: (savedRecord?: any) => void;
}
```

## Usage

```tsx
import { FormProps } from 'uxp/components';
```

## Related Types

- [DynamicFormProps](../types/DynamicFormProps.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [WizardState](../types/WizardState.md)
- [ActionResponse](../types/ActionResponse.md)

