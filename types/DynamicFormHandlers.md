# DynamicFormHandlers


Interface for external form control


## Definition

```tsx
export interface DynamicFormHandlers {
    submit: () => Promise<void>,
    cancel: () => void,
    validate: () => Promise<boolean>,
    getFormData: () => IFormData,
    setFormData: (data: IFormData) => void,
    getErrors: () => Record<string, string>,
    clearErrors: () => void,
    setErrors: (errors: Record<string, string>) => void,
    clearFieldError: (fieldName: string | string[]) => void,
    isProcessing: () => boolean,
    goToNext: () => void,
    goToPrevious: () => void,
}
```

## Usage

```tsx
import { DynamicFormHandlers } from 'uxp/components';
```

## Related Types

- [IFormData](../types/IFormData.md)
- [FormValue](../types/FormValue.md)

