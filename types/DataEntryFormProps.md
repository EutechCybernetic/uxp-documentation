# DataEntryFormProps


Props for the DataEntryForm component


## Definition

```tsx
export interface DataEntryFormProps<T = any> extends Omit<DynamicFormProps, 'formStructure'> {
    /**
     * Current item data to populate form fields
     */
    item?: Partial<T>;

    /**
     * DataEntrySection components defining the form structure
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { DataEntryFormProps } from 'uxp/components';
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

