# WizardStep


Configuration for a single step in the wizard


## Definition

```tsx
export interface WizardStep {
    /**
     * Unique identifier for the step
     */
    id: string;

    /**
     * Label text to display below the step number
     */
    label: string;

    /**
     * Whether this step has validation errors
     */
    hasError: boolean;
}
```

## Usage

```tsx
import { WizardStep } from 'uxp/components';
```

