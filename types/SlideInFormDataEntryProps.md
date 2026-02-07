# SlideInFormDataEntryProps


Props for SlideInForm with DataEntryForm (JSX declarative API)


## Definition

```tsx
export type SlideInFormDataEntryProps<T = any> = SlideInFormBaseProps &
    Omit<DataEntryFormProps<T>, 'onSubmit' | 'onCancel'> & {
        /**
         * Form type - use 'data-entry' for JSX declarative API
         */
        formType: 'data-entry';
    };
```

## Usage

```tsx
import { SlideInFormDataEntryProps } from 'uxp/components';
```

