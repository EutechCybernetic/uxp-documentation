# FormSectionProps




## Definition

```tsx
export interface FormSectionProps {
    fields: DynamicFormFieldProps[]
    columns?: 1 | 2 | 3, // default is 1
    show?: (data: IFormData) => boolean
    title?: string,
    seperator?: boolean
}
```

## Usage

```tsx
import { FormSectionProps } from 'uxp/components';
```

## Related Types

- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

