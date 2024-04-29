# IDynamicFormProps








```tsx
interface IDynamicFormProps {
    formStructure: IDynamicFormFieldProps[],
    onSubmit: (data: { [key: string]: string | number | boolean }) => void
    onCancel?: () => void,
    type?: IFormType
    widget?: IWidgetInstance,
    submitButtonLabel?: string,
    cancelButtonLabel?: string,
    hideCancelButton?: boolean
}
```

## Usage



```tsx
import {IDynamicFormProps} from 'uxp/components';
```

