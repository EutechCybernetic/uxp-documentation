# IModalWizardStep




An individual step in a modal wizard




```tsx
interface IModalWizardStep {
    /**
     * This function returns the contents of the main area of the wizard
     */
    render:(props:IModalWizardStepProps) => JSX.Element;

    /**
     * This function renders the status section on the left sidebar. This will be rendered only if the `showStatus` property is not false.
     * You can return null from this function to prevent the side bar status from being rendered.
     */
    renderStatus:() => JSX.Element;

    /**
     * This is called just before the user tries to advance to the next stage. You can use this to validate the current stage.
     * You can return 
     * a string - to indicate the id of the next step that should be taken.
     * a number - to indicate the index of the next step to be taken
     * undefined or null - to indicate it should stay on the current step
     */
    onValidateStep?:() =>string|number|undefined|null|boolean;

    /**
     * An optional id for this step. This is used by the onValidateStep function to address a specific step to jump to
     */
    id?:string;

    /**
     * The title of this step. Currently this is used only in the sidebar to show the status of that stage.
     */
    title?: string;

    /**
     * Set this to false to prevent the 'next' button from being shown. If this is false you will have to manually render the 'next' button yourself
     */
    showNext?: boolean;


    nextTitle?:string;

    /**
     * Set to false to prevent the status sidebar from being shown at this stage
     */
    showStatus?:boolean;

    /**
     * Render a sub-header below the main dialog header 
     * 
     */
    renderSubHeader?:()=>JSX.Element;
}
```

## Usage



```tsx
import {IModalWizardStep} from 'uxp/components';
```

