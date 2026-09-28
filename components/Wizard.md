# Wizard

A wizard-style interface to guide users through a journey.
You can conditionally skip steps and validate steps before proceeding.



## Installation

```tsx
import { Wizard } from 'uxp/components';
```

## Signature

```tsx
const Wizard: React.FunctionComponent<IWizardProps>
```

## Examples

```tsx
tsx
<Wizard
  steps={[
    {
      id: "step1",
      title: "Personal Info",
      render: ({ next, prev }) => (
        <div>
          <h3>Enter your details</h3>
          <button onClick={() => next()}>Next</button>
        </div>
      ),
      onNext: () => "step2" // Optional: control navigation
    },
    {
      id: "step2",
      title: "Review",
      render: ({ next, prev }) => (
        <div>
          <h3>Review your information</h3>
          <button onClick={() => prev()}>Back</button>
          <button onClick={() => next()}>Complete</button>
        </div>
      )
    }
  ]}
  onComplete={async () => {
    await saveData();
  }}
  completionTitle="Finish"
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-wizard-wizard--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Wizard live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|steps|[IWizardStep[]](../types/IWizardStep.md)|Yes|-|Two steps steps={[ { id: 'details', title: 'Details', render: ({ next }) => <di…|
|completionTitle|string|No|-|"Asset created"|
|onComplete|() => Promise<void>|No|-|Resolves onComplete={async () => console.log('complete')}|
|showStepIndicator|boolean|No|-|-|

## Related Types

- [IWizardProps](../types/IWizardProps.md)
- [IWizardStep](../types/IWizardStep.md)
- [IWizardStepProps](../types/IWizardStepProps.md)

