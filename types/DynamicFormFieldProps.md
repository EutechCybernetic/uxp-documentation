# DynamicFormFieldProps




## Definition

```tsx
export interface DynamicFormFieldProps {
    name: string,
    label: string,
    type: 'text' | 'password' | 'number' | 'email' | 'checkbox' | 'toggle' | 'select' | 'date' | 'time' | 'datetime' | 'daterange' | 'timerange' | 'timerangeslider' | 'hidden' | 'textarea' | 'json' | 'readonly' | 'spacer',
    value?: FormValue,
    placeholder?: string,
    icon?: string,

    renderField?: (data: IFormData, onValueChange: (value: any) => void) => React.ReactNode

    info?: string | React.ReactNode | string[]

    // show hide fields
    show?: (data: IFormData) => boolean

    /**
     * Optional: Explicit list of field names this field depends on.
     * If provided, field only re-renders when these fields change.
     * If omitted, dependencies are auto-detected from show/getOptions/validate functions.
     * Use this for performance optimization or when auto-detection fails.
     */
    dependsOn?: string[]

    // for select
    options?: Array<{ label: string | number, value: string | number }> | Array<any>,
    getOptions?: (data: IFormData) => (Array<{ label: string | number, value: string | number }> | Array<any>)
    getPaginatedOptions?: (data: IFormData, max: number, lastPageToken: string, args?: any) => Promise<{ items: Array<any>, pageToken: string, total?: number }>
    selectedOptionLabel?: string | ((data: IFormData, selected: string) => Promise<any>)
    labelField?: string
    valueField?: string

    // select adornments (v4 dynamiclist parity) — single-select only
    /* pinboard parked — see internals/pinboard-picker.md
    pinboard?: { objectType: string, objectTypeLabel?: string }
    */
    /** Enable the search-list modal button (ObjectSearchComponent config). */
    searchModal?: SearchModalConfig

    // for numbers
    allowZero?: boolean
    allowNegative?: boolean,

    // a formatter function on value change
    formatter?: (value: any) => any

    validate?: {
        required?: boolean | ((data: IFormData) => boolean) // default is false
        allowEmptyString?: boolean // trim value. only for string values
        minLength?: number
        maxLength?: number
        regExp?: RegExp
        allowZero?: boolean // only applicable to numbers
        allowNegative?: boolean,
        minVal?: number
        maxVal?: number
        customValidateFunction?: (value: any, data: IFormData) => CustomValidateResponse | Promise<CustomValidateResponse>// this is to give a custom validate function, which takes the value and return a boolean indicating value is valid or not
    },

    checkboxLabel?: string

    description?: string | React.ReactNode

    /**
     * Where to render the info button. Defaults to 'label'.
     * - 'label': small borderless icon inline with the label
     * - 'input': standard info button to the right of the input
     */
    infoPosition?: 'label' | 'input'
}
```

## Usage

```tsx
import { DynamicFormFieldProps } from 'uxp/components';
```

## Related Types

- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

