# ExtendedFormProps








```tsx
interface ExtendedFormProps extends Omit<FormProps, 'onSubmit'> {
    /**
     * submit function for editing
     */
    onSubmit: (data: IFormData, editInstance: any) => Promise<ActionResponse>;
}
```

## Usage



```tsx
import {ExtendedFormProps} from 'uxp/components';
```

