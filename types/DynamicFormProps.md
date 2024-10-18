# DynamicFormProps








```tsx
interface DynamicFormProps {
    formStructure: FormSectionProps[],
    beforeSubmit?: (data: IFormData) => Promise<IFormData>
    onSubmit: (data: IFormData) => Promise<void>
    onCancel?: () => void,
    submitButtonLabel?: string,
    submitButtonLoadingLabel?: string,
    cancelButtonLabel?: string,
    hideCancelButton?: boolean,
    isLoading?: boolean
}
```

## Usage



```tsx
import {DynamicFormProps} from 'uxp/components';
```

