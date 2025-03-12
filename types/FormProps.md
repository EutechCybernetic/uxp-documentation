# FormProps








```tsx
interface FormProps {
    /**
     * title of the form
     */
    title: string
    /**
     * form structure 
     */
    formStructure: FormSectionProps[],
    /**
     * submit function
     */
    onSubmit: (data: IFormData) => Promise<ActionResponse>
    /**
     * cancel fucnton 
     */
    onCancel?: () => void,
    /**
     * label for submit button 
     */
    submitButtonLabel?: string,
    /**
     * loading label for submit button
     */
    submitButtonLoadingLabel?: string,
    /**
     * label for cancel button
     */
    cancelButtonLabel?: string,
    /**
     * option to hide cancel button
     */
    hideCancelButton?: boolean,
    /**
     * callback function after saving 
     */
    afterSave?: (savedRecord?: any) => void,
    formContainerStyles?: React.CSSProperties
}
```

## Usage



```tsx
import {FormProps} from 'uxp/components';
```

