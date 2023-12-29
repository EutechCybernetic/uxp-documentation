# ModalWizard



This component is used to show a modal dialog that takes the user through as sequence of steps.
You define how each step should render.




## Installation



```tsx
import {ModalWizard} from 'uxp/components';
```

## Examples



```tsx
<ModalWizard
     show={show}
     title="Sample modal wizard"
     steps={[
     {
         id: "step-1",
         render: (props) => <div>
             <FormField>
                 <Label>Name</Label>
                 <Input value={name} onChange={setName} />
             </FormField>
             <FormField>
                 <Label>Email</Label>
                 <Input value={email} onChange={setEmail} />
             </FormField>
         </div>,
         renderStatus: () => <div>Personal Details</div>,
         onValidateStep: () => "step-2",
         showStatus: true
     },
     {
         id: "step-2",
         render: (props) => <div>
             <FormField>
                 <Label>University</Label>
                 <Input value={school} onChange={setSchool} />
             </FormField>
         </div>,
         renderStatus: () => <div>Educational Details</div>
     }
 ]}
 onClose={() => { setShow(false) }}
 onComplete={async () => { return executeAction("model", "action", {data: data}) }}
/>
```

## Properties

|Name|Type|Description|
|-|-|-|
|show|boolean|Set this to true to show the dialog. False to hide it |
|onClose|()=>void|Call this to close the dialog |
|title|string|The title to show on the top |
|icon|string|An optional icon to show |
|onRenderHeader|(currentStep:IModalWizardStepProps)=> JSX.Element|A method to render a subheader just below the title area. |
|steps|IModalWizardStep[]|The list of steps that this wizard consists of. |
|onComplete|()=>Promise<any>|This action executes after they hit 'next' on the final page. |
|completionText|string|Text to show on the 'next' button in the final stage. |
|className|string||
### show



---



Set this to true to show the dialog. False to hide it


|type|
|-|
|boolean|
### onClose



---



Call this to close the dialog


|type|
|-|
|()=>void|
### title



---



The title to show on the top


|type|
|-|
|string|
### icon



---



An optional icon to show


|type|
|-|
|string|
### onRenderHeader



---



A method to render a subheader just below the title area.


|type|
|-|
|(currentStep:IModalWizardStepProps)=> JSX.Element|
### steps



---



The list of steps that this wizard consists of.


|type|
|-|
|IModalWizardStep[]|
### onComplete



---



This action executes after they hit 'next' on the final page.


|type|
|-|
|()=>Promise<any>|
### completionText



---



Text to show on the 'next' button in the final stage.


|type|
|-|
|string|
### className



---





|type|
|-|
|string|
