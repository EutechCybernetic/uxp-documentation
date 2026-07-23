# IFormAlertProps

## Definition

```tsx
export interface IFormAlertProps {
    icon?: IconProp
    title: string | IAlertContent,
    content?: string | IAlertContent,
    formStructure: IAlertFormField[],
    submitButtonTitle?: string,
    cancelButtonTitle?: string,
    hideCancelButton?: boolean
}
```

## Usage

```tsx
import { IFormAlertProps } from 'uxp/components';
```

## Related Types

- [IAlertContent](../types/IAlertContent.md)
- [IAlertFormField](../types/IAlertFormField.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)

