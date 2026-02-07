# SlideInFormDynamicProps


Props for SlideInForm with DynamicForm (config-driven API)


## Definition

```tsx
export type SlideInFormDynamicProps = SlideInFormBaseProps &
    Omit<DynamicFormProps, 'onSubmit' | 'onCancel'> & {
        /**
         * Form type - use 'dynamic' for config-driven API
         */
        formType: 'dynamic';
    };
```

## Usage

```tsx
import { SlideInFormDynamicProps } from 'uxp/components';
```

