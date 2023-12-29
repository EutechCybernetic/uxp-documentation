# IWizardStepProps




These props are passed to the render method of each wizard step.





```tsx
interface IWizardStepProps {
    /**
     * Triggers a request to go to the next step in the wizard. You can use this functional to programatically move to the next step (the user can also click the 'Next' action to do the same thing)
     */
    next: (id?: string) => void;

    /**
     * Similar to `next`, you can call this function to programatically go to the previous step in the wizard.
     */
    prev: () => void;
}
```

## Usage



```tsx
import {IWizardStepProps} from 'uxp/components';
```

