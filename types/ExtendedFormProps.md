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
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [ActionResponse](../types/ActionResponse.md)

