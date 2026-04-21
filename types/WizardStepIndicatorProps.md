# WizardStepIndicatorProps


Props for the WizardStepIndicator component


## Definition

```tsx
export interface WizardStepIndicatorProps {
    /**
     * Array of steps to display
     */
    steps: WizardStep[];

    /**
     * ID of the currently active step
     */
    currentStepId: string;

    /**
     * Optional callback when a step is clicked (for navigation)
     * If not provided, steps are not clickable
     */
    onStepClick?: (stepId: string) => void;

    /**
     * Optional array of step IDs that are completed
     * Completed steps show a checkmark icon
     */
    completedSteps?: string[];

    /**
     * Optional: Disable auto-scroll to active step. Default is false.
     */
    disableAutoScroll?: boolean;
}
```

## Usage

```tsx
import { WizardStepIndicatorProps } from 'uxp/components';
```

## Related Types

- [WizardStep](../types/WizardStep.md)

