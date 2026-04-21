# IAlertResult

The result of calling the useAlert hook. This gives you methods to invoke a alert or a confirm alert




## Definition

```tsx
interface IAlertResult {
    show: (content: string | IBaseAlertProps) => Promise<any>,
    confirm: (content: string | IConfirmAlertProps) => Promise<boolean>
    form: (content: IFormAlertProps) => Promise<any>
    info: (content: string | IBaseAlertProps) => Promise<any>
    success: (content: string | IBaseAlertProps) => Promise<any>
    warning: (content: string | IBaseAlertProps) => Promise<any>
    error: (content: string | IBaseAlertProps) => Promise<any>
}
```

## Usage

```tsx
import { IAlertResult } from 'uxp/components';
```

## Related Types

- [IBaseAlertProps](../types/IBaseAlertProps.md)
- [IAlertContent](../types/IAlertContent.md)
- [IConfirmAlertProps](../types/IConfirmAlertProps.md)
- [IFormAlertProps](../types/IFormAlertProps.md)
- [IAlertFormField](../types/IAlertFormField.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)

