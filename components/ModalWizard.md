# ModalWizard

This component is used to show a modal dialog that takes the user through as sequence of steps.
You define how each step should render.




## Installation

```tsx
import { ModalWizard } from 'uxp/components';
```

## Signature

```tsx
const ModalWizard: React.FunctionComponent<IModalWizardProps>
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

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|title|string|Yes|-|-|
|icon|string|No|-|-|
|onRenderHeader|(currentStep: IModalWizardStepProps) => JSX.Element|No|-|-|
|steps|[IModalWizardStep[]](../types/IModalWizardStep.md)|Yes|-|-|
|onComplete|() => Promise<any>|Yes|-|-|
|completionText|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [IModalWizardProps](../types/IModalWizardProps.md)
- [IModalWizardStepProps](../types/IModalWizardStepProps.md)
- [IModalWizardStep](../types/IModalWizardStep.md)

