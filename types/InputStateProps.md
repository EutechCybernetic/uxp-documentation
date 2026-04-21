# InputStateProps

Common input state props



## Definition

```tsx
export interface InputStateProps {
    /**
     * Control the disabled state of the input
     */
    disabled?: boolean;

    /**
     * Mark input as read-only
     */
    readOnly?: boolean;

    /**
     * Validation state: true (valid), false (invalid), undefined (neutral)
     */
    isValid?: boolean;
}
```

## Usage

```tsx
import { InputStateProps } from 'uxp/components';
```

