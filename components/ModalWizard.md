# ModalWizard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-wizard-modalwizard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ModalWizard live demo"
></iframe>


This component is used to show a modal dialog that takes the user through a sequence of steps.
You define how each step should render.

**V5 Implementation**: ModalWizard is now a thin wrapper around Modal + Wizard components.
It provides backward compatibility while leveraging the v5 architecture.





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
         title: "Personal Details",
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
         renderStatus: () => null, // Ignored in v5
         onValidateStep: () => "step-2"
     },
     {
         id: "step-2",
         title: "Educational Details",
         render: (props) => <div>
             <FormField>
                 <Label>University</Label>
                 <Input value={school} onChange={setSchool} />
             </FormField>
         </div>,
         renderStatus: () => null // Ignored in v5
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

