# IConfirmAlertProps

## Definition

```tsx
export interface IConfirmAlertProps {
    icon?: IconProp
    title?: string | IAlertContent,
    content: string | IAlertContent,
    confirmButtonTitle?: string,
    cancelButtonTitle?: string,
    requireVerification?: boolean,
    verificationText?: string,
    verificationTitle?: string,
    verificationPrompt?: string,
    verificationError?: string,
    verificationConfirmButtonTitle?: string,
    caseSensitive?: boolean,
    /**
     * Optional form fields rendered inside the confirm dialog. When provided, confirm() resolves to the
     * collected field values (an object) instead of `true` (and to `false` on cancel). Purely additive —
     * confirms without `fields` still resolve to a boolean.
     */
    fields?: IAlertFormField[]
}
```

## Usage

```tsx
import { IConfirmAlertProps } from 'uxp/components';
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

