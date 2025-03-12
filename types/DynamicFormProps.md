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
    isLoading?: boolean,
    formContainerStyles?: React.CSSProperties,
    renderOptions?: {
        renderStyle: 'standard' | 'tabs' | 'wizard',
        direction?: 'vertical' | 'horizontal' // only applicable to tabs and wizard
        tabBackgroundColor?: string,
        tabTextColor?: string,
        activeTabBackgroundColor?: string,
        activeTabTextColor?: string,
        errorTabBackgroundColor?: string,
        errorTabTextColor?: string,
        disabledTabBackgroundColor?: string,
        disabledTabTextColor?: string,
        previousButtonLabel?: string,
        nextButtonLabel?: string
    }
}
```

## Usage



```tsx
import {DynamicFormProps} from 'uxp/components';
```

