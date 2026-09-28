# ModalWizard

> **Part of [Wizard](Wizard.md).** Usually used through Wizard. Use it directly to build a custom layout.

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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-wizard-modalwizard--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ModalWizard live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|true|
|onClose|() => void|Yes|-|Log onClose={() => console.log('closed')}|
|title|string|Yes|-|"Add asset"|
|icon|string|No|-|"fas plus"|
|onRenderHeader|(currentStep: IModalWizardStepProps) => JSX.Element|No|-|-|
|steps|[IModalWizardStep[]](../types/IModalWizardStep.md)|Yes|-|Two steps steps={[ { render: ({ next }) => <div>Enter the asset details. <Butto…|
|onComplete|() => Promise<any>|Yes|-|Resolves onComplete={async () => console.log('complete')}|
|completionText|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [IModalWizardProps](../types/IModalWizardProps.md)
- [IModalWizardStepProps](../types/IModalWizardStepProps.md)
- [IModalWizardStep](../types/IModalWizardStep.md)

