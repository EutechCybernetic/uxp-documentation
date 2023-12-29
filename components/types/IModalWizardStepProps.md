# IModalWizardStepProps





Props passed to the wizard step's render function




```tsx
interface IModalWizardStepProps {
    /**
     * Triggers the wizard to move to the next stage
     */
    next:()=>void;

    /**
     * Triggers the wizard to move the previous stage
     */
    prev:()=>void;

    /**
     * Information about the current stage
     */
    currentStep:IModalWizardStep;
    data?:any;
}
```

## Usage



```tsx
import {IModalWizardStepProps} from 'uxp/components';
```

