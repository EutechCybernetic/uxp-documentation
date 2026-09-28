# IWizardProps

## Definition

```tsx
interface IWizardProps {
    /**
     * A list of steps within the wizard.
     * @example Two steps
     * ```tsx
     * steps={[
     *     { id: 'details', title: 'Details', render: ({ next }) => <div>Enter the asset details. <Button title="Next" onClick={() => next()} /></div> },
     *     { id: 'confirm', title: 'Confirm', render: ({ prev }) => <div>Check and confirm. <Button title="Back" onClick={prev} /></div> },
     * ]}
     * ```
     */
    steps: IWizardStep[];

    /**
     * What title should be shown on the 'next' button when we reach the last screen
     * @example "Asset created"
     */
    completionTitle?: string;

    /**
     * This callback is run whenever they hit the final 'completion' action on the last step. It should be async so we can show a loading animation on the button
     * @example Resolves
     * ```tsx
     * onComplete={async () => console.log('complete')}
     * ```
     */
    onComplete?: () => Promise<void>;

    /**
     * Optional: Show/hide the step indicator. Default is true.
     */
    showStepIndicator?: boolean;
}
```

## Usage

```tsx
import { IWizardProps } from 'uxp/components';
```

## Related Types

- [IWizardStep](../types/IWizardStep.md)
- [IWizardStepProps](../types/IWizardStepProps.md)

