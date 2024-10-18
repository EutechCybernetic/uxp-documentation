# FormSectionProps





Form section properties




```tsx
interface FormSectionProps {
    /**
     * form fields
     */
    fields: DynamicFormFieldProps[]
    /**
     * options to arrange form fields to columns  
     */
    columns?: 1 | 2 | 3,
    /**
     * option to dynamically show/hide a section
     */
    show?: (data: IFormData) => boolean
    /**
     * title for the section 
     */
    title?: string,
    /**
     * option to show a separator at the bottom of the section
     */
    seperator?: boolean
}
```

## Usage



```tsx
import {FormSectionProps} from 'uxp/components';
```

