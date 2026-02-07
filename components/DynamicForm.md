# DynamicForm


This component provides a dynamic form component
Developer can pass a json structure and it will create a form component


## Installation

```tsx
import { DynamicForm } from 'uxp/components';
```

## Signature

```tsx
const DynamicForm: React.ForwardRefExoticComponent<React.RefAttributes<DynamicFormHandlers> & DynamicFormProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|formStructure|[FormSectionProps[]](../types/FormSectionProps.md)|Yes|-|-|
|beforeSubmit|(data: IFormData) => Promise<IFormData>|No|-|-|
|onSubmit|(data: IFormData) => Promise<void>|Yes|-|-|
|onCancel|() => void|No|-|-|
|submitButtonLabel|string|No|-|-|
|submitButtonLoadingLabel|string|No|-|-|
|submitButtonIcon|string|No|-|-|
|cancelButtonLabel|string|No|-|-|
|cancelButtonIcon|string|No|-|-|
|hideCancelButton|boolean|No|-|-|
|hideButtons|boolean|No|-|-|
|isLoading|boolean|No|-|-|
|formContainerStyles|React.CSSProperties|No|-|-|
|renderOptions|{ renderStyle: 'standard' \| 'tabs' \| 'wizard', direction?: 'vertical' \| 'horizontal' // only applicable to tabs and wizard tabBackgroundColor?: string, tabTextColor?: string, activeTabBackgroundColor?: string, activeTabTextColor?: string, errorTabBackgroundColor?: string, errorTabTextColor?: string, disabledTabBackgroundColor?: string, disabledTabTextColor?: string, previousButtonLabel?: string, nextButtonLabel?: string }|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|submit|() => Promise<void>|-|
|cancel|() => void|-|
|validate|() => Promise<boolean>|-|
|getFormData|() => IFormData|-|
|setFormData|(data: IFormData) => void|-|
|getErrors|() => Record<string, string>|-|
|clearErrors|() => void|-|
|setErrors|(errors: Record<string, string>) => void|-|
|clearFieldError|(fieldName: string \| string[]) => void|-|
|isProcessing|() => boolean|-|
|goToNext|() => void|-|
|goToPrevious|() => void|-|

## Related Types

- [DynamicFormProps](../types/DynamicFormProps.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [DynamicFormHandlers](../types/DynamicFormHandlers.md)

