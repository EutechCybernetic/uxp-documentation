# ObjectField


Configuration for a field displayed in the ObjectInfoCard.


## Definition

```tsx
export interface ObjectField {
    /**
     * Label for the field.
     */
    label: string;

    /**
     * Value of the field, can be any type.
     */
    value: any;

    /**
     * Optional FontAwesome icon identifier for the field.
     */
    icon?: string;

    /**
     * Optional custom renderer for the field value.
     */
    renderValue?: (value: any) => React.ReactNode;
}
```

## Usage

```tsx
import { ObjectField } from 'uxp/components';
```

