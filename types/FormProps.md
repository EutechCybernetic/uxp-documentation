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
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [ActionResponse](../types/ActionResponse.md)

