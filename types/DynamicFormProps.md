# DynamicFormProps




## Definition

```tsx
export interface DynamicFormProps {
    formStructure: FormSectionProps[],
    beforeSubmit?: (data: IFormData) => Promise<IFormData>
    onSubmit: (data: IFormData) => Promise<void>
    onCancel?: () => void,
    submitButtonLabel?: string,
    submitButtonLoadingLabel?: string,
    submitButtonIcon?: string,
    cancelButtonLabel?: string,
    cancelButtonIcon?: string,
    hideCancelButton?: boolean,
    hideButtons?: boolean, // NEW: Hide internal buttons completely
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
import { DynamicFormProps } from 'uxp/components';
```

## Related Types

- [FormSectionProps](../types/FormSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

