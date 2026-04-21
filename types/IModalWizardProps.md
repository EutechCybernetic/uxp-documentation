# IModalWizardProps




## Definition

```tsx
interface IModalWizardProps {

    /**
     * Set this to true to show the dialog. False to hide it
     */
    show: boolean;

    /**
     * Call this to close the dialog
     */
    onClose: () => void;

    /**
     * The title to show on the top
     */
    title: string;

    /**
     * @deprecated Not used in v5 - Modal component doesn't support header icons
     * An optional icon to show
     */
    icon?: string;

    /**
     * @deprecated Not used in v5 - Use Modal's headerContent prop directly if custom header needed
     * A method to render a subheader just below the title area.
     */
    onRenderHeader?: (currentStep: IModalWizardStepProps) => JSX.Element;

    /**
     * The list of steps that this wizard consists of.
     */
    steps: IModalWizardStep[];

    /**
     * This action executes after they hit 'next' on the final page.
     */
    onComplete: () => Promise<any>;

    /**
     * Text to show on the 'next' button in the final stage.
     */
    completionText?: string;
    className?: string;
}
```

## Usage

```tsx
import { IModalWizardProps } from 'uxp/components';
```

## Related Types

- [IModalWizardStepProps](../types/IModalWizardStepProps.md)
- [IModalWizardStep](../types/IModalWizardStep.md)

