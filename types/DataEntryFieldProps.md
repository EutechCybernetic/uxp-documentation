# DataEntryFieldProps


Props for DataEntryField component.
This component is a placeholder used to declaratively define form fields in JSX.
All props are extracted by DataEntryForm and mapped to DynamicFormFieldProps.


## Definition

```tsx
export interface DataEntryFieldProps {
    // ========== Basic Properties ==========

    /**
     * Field name - maps to the property name in the data object
     */
    field: string;

    /**
     * Field label displayed to the user
     */
    title: string;

    /**
     * Field type - determines the input component to render
     * @default 'text'
     */
    type?: 'text' | 'password' | 'number' | 'email' | 'checkbox' | 'toggle' | 'select' |
           'date' | 'time' | 'datetime' | 'daterange' | 'hidden' | 'textarea' | 'json' | 'readonly';

    /**
     * Initial/current value of the field
     */
    value?: FormValue;

    /**
     * Placeholder text for the input
     */
    placeholder?: string;

    /**
     * FontAwesome icon to display with the label (e.g., 'fas user')
     */
    icon?: string;

    // ========== Custom Rendering ==========

    /**
     * Custom render function for the field.
     * If provided, this will be used instead of the default input component.
     * @param data - Current form data
     * @param onChange - Callback to update the field value
     */
    children?: (data: IFormData, onChange: (value: any) => void) => React.ReactNode;

    /**
     * Conditional visibility function.
     * If provided, the field will only be shown when this returns true.
     * @param data - Current form data
     */
    show?: (data: IFormData) => boolean;

    // ========== Select Field Options ==========

    /**
     * Static options for select fields
     */
    options?: Array<{ label: string | number; value: string | number }> | Array<any>;

    /**
     * Dynamic options function for select fields
     * @param data - Current form data
     */
    getOptions?: (data: IFormData) => (Array<{ label: string | number; value: string | number }> | Array<any>);

    /**
     * Paginated options loader for select fields with large datasets
     * @param data - Current form data
     * @param max - Maximum number of items to return
     * @param lastPageToken - Token for pagination
     * @param args - Additional arguments
     */
    getPaginatedOptions?: (
        data: IFormData,
        max: number,
        lastPageToken: string,
        args?: any
    ) => Promise<{ items: Array<any>; pageToken: string; total?: number }>;

    /**
     * Custom label for the selected option in select fields
     * Can be a string or a function that resolves the label
     */
    selectedOptionLabel?: string | ((data: IFormData, selected: string) => Promise<any>);

    /**
     * Property name to use as the label in options
     * @default 'label'
     */
    labelField?: string;

    /**
     * Property name to use as the value in options
     * @default 'value'
     */
    valueField?: string;

    // ========== Number Field Options ==========

    /**
     * Allow zero values for number fields
     * @default false
     */
    allowZero?: boolean;

    /**
     * Allow negative values for number fields
     * @default false
     */
    allowNegative?: boolean;

    // ========== Value Formatting ==========

    /**
     * Function to format the value before it's set in form data
     * @param value - The raw value from the input
     */
    formatter?: (value: any) => any;

    // ========== Validation ==========

    /**
     * Mark field as required. Accepts a boolean or a function that receives the current form data and returns a boolean.
     * @default false
     */
    required?: boolean | ((data: IFormData) => boolean);

    /**
     * Allow empty strings for required string fields (after trim)
     * @default false
     */
    allowEmptyString?: boolean;

    /**
     * Minimum length for string fields
     */
    minLength?: number;

    /**
     * Maximum length for string fields
     */
    maxLength?: number;

    /**
     * Regular expression pattern for validation
     */
    regExp?: RegExp;

    /**
     * Minimum value for number fields
     */
    minVal?: number;

    /**
     * Maximum value for number fields
     */
    maxVal?: number;

    /**
     * Custom validation function
     * @param value - The current field value
     * @param data - The current form data
     */
    validate?: (value: any, data: IFormData) => CustomValidateResponse | Promise<CustomValidateResponse>;
}
```

## Usage

```tsx
import { DataEntryFieldProps } from 'uxp/components';
```

## Related Types

- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

