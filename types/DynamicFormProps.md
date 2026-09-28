# DynamicFormProps




## Definition

```tsx
export interface DynamicFormProps {
    /**
     * @example
     * [
     *   {
     *     title: 'Asset details',
     *     columns: 2,
     *     fields: [
     *       { name: 'name', label: 'Name', type: 'text', placeholder: 'e.g. Chiller 03', validate: { required: true } },
     *       { name: 'status', label: 'Status', type: 'select', options: [
     *           { label: 'Running', value: 'Running' },
     *           { label: 'Stopped', value: 'Stopped' },
     *           { label: 'Fault', value: 'Fault' },
     *         ] },
     *       { name: 'location', label: 'Location', type: 'text' },
     *       { name: 'commissioned', label: 'Commissioned on', type: 'date' },
     *       { name: 'notes', label: 'Notes', type: 'textarea' },
     *     ],
     *   },
     * ]
     */
    formStructure: FormSectionProps[],
    beforeSubmit?: (data: IFormData) => Promise<IFormData>
    /**
     * @example Resolves after 1 s
     * ```tsx
     * onSubmit={async (data) => {
     *     await new Promise(resolve => setTimeout(resolve, 1000));
     *     console.log('submitted', data);
     * }}
     * ```
     */
    onSubmit: (data: IFormData) => Promise<void>
    /**
     * @example Log
     * ```tsx
     * onCancel={() => console.log('cancelled')}
     * ```
     */
    onCancel?: () => void,
    submitButtonLabel?: string,
    submitButtonLoadingLabel?: string,
    submitButtonIcon?: string,
    cancelButtonLabel?: string,
    cancelButtonIcon?: string,
    buttonSize?: 'smaller' | 'small' | 'medium' | 'large',
    hideCancelButton?: boolean,
    hideButtons?: boolean, // NEW: Hide internal buttons completely
    isLoading?: boolean,
    formContainerStyles?: React.CSSProperties,
    onWizardStateChange?: (state: WizardState | null) => void, // Callback when wizard state changes
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
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [WizardState](../types/WizardState.md)

