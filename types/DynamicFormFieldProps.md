# DynamicFormFieldProps








```tsx
interface DynamicFormFieldProps {
    name: string,
    label: string,
    type: 'text' | 'password' | 'number' | 'email' | 'checkbox' | 'toggle' | 'select' | 'date' | 'time' | 'datetime' | 'hidden' | 'textarea' | 'json',
    value?: FormValue,
    placeholder?: string,

    renderField?: (data: IFormData, onValueChange: (value: any) => void) => React.ReactNode

    // show hide fields
    show?: (data: IFormData) => boolean


    // for select
    options?: Array<{ label: string | number, value: string | number }>,
    getOptions?: (data: IFormData) => Array<{ label: string | number, value: string | number }>

    // for numbers 
    allowZero?: boolean
    allowNegative?: boolean,

    // a formatter function on value change 
    formatter?: (value: any) => any

    validate?: {
        required?: boolean // default is false 
        allowEmptyString?: boolean // trim value. only for string values 
        minLength?: number
        maxLength?: number
        regExp?: RegExp
        allowZero?: boolean // only applicable to numbers 
        allowNegative?: boolean,
        minVal?: number
        maxVal?: number
        customValidateFunction?: (value: any, data: IFormData) => { valid: boolean, error?: string }// this is to give a custom validate function, which takes the value and return a boolean indicating value is valid or not
    },
}
```

## Usage



```tsx
import {DynamicFormFieldProps} from 'uxp/components';
```

