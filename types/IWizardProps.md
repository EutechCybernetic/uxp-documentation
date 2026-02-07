# IWizardProps

## Definition

```tsx
interface IWizardProps {
    /**
     * A list of steps within the wizard.
     */
    steps: IWizardStep[];

    /**
     * What title should be shown on the 'next' button when we reach the last screen
     */
    completionTitle?: string;

    /**
     * This callback is run whenever they hit the final 'completion' action on the last step. It should be async so we can show a loading animation on the button
     */
    onComplete?: () => Promise<void>;
}
```

## Usage

```tsx
import { IWizardProps } from 'uxp/components';
```

## Related Types

- [IWizardStep](../types/IWizardStep.md)
- [IWizardStepProps](../types/IWizardStepProps.md)

