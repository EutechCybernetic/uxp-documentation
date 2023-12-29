# IWizardStep



Defines an individual step within a wizard.
Each step provides a render method to render the actual step.
You also need to specify a unique 'id' and title for the step.
You can optionally specify an `onNext` callback  to run whenever the user wants to go to the next step.
This can return either `null` - meaning we should not proceed to the next step, or the id of the next step to go to.





```tsx
interface IWizardStep {
    onNext?: () => string | null;
    id: string;
    title: string;
    render: (props: IWizardStepProps) => React.ReactNode;
}
```

## Usage



```tsx
import {IWizardStep} from 'uxp/components';
```

