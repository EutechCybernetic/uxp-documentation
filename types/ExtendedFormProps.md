# ExtendedFormProps




## Definition

```tsx
interface ExtendedFormProps extends Omit<FormProps, 'onSubmit'> {
    /**
     * submit function for editing
     */
    onSubmit: (data: IFormData, editInstance: any) => Promise<ActionResponse>;
}
```

## Usage

```tsx
import { ExtendedFormProps } from 'uxp/components';
```

## Related Types

- [FormProps](../types/FormProps.md)
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

