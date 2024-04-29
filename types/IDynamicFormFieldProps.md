# IDynamicFormFieldProps








```tsx
interface IDynamicFormFieldProps {
    name: string,
    label: string,
    type: 'text' | 'string' | 'password' | 'number' | 'email' | 'checkbox' | 'toggle' | 'select' | 'date' | 'time' | 'json',
    value?: string | string[] | number | boolean,
    placeholder?: string,
    options?: Array<{ label: string, value: string }>,

    validate?: {
        required?: boolean // default is false 
        allowEmptyString?: boolean // trim value. only for string values 
        minLength?: number
        maxLength?: number
        regExp?: RegExp
        allowZeros?: boolean // on;y applicable to numbers 
        minVal?: number
        maxVal?: number
        customValidateFunction?: (value: any) => { valid: boolean, error?: string }// this is to give a custom validate function, which takes the value and return a boolean indicating value is valid or not
    },
    // a formatter function on value change 
    formatter?: (value: any) => any
}
```

## Usage



```tsx
import {IDynamicFormFieldProps} from 'uxp/components';
```

