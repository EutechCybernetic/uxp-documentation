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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|steps|[IWizardStep[]](../types/IWizardStep.md)|Yes|-|-|
|completionTitle|string|No|-|-|
|onComplete|() => Promise<void>|No|-|-|
|showStepIndicator|boolean|No|-|-|

## Related Types

- [IWizardProps](../types/IWizardProps.md)
- [IWizardStep](../types/IWizardStep.md)
- [IWizardStepProps](../types/IWizardStepProps.md)

