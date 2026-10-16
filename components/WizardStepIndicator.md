# WizardStepIndicator


WizardStepIndicator - A horizontal step indicator for multi-step wizards

Displays numbered steps in a horizontal scrollable container with:
- Numbered circles for each step
- Connector lines between steps
- Visual states: active, completed, error, pending
- Smooth auto-scroll to keep active step centered
- Theme-aware styling



## Installation

```tsx
import { WizardStepIndicator } from 'uxp/components';
```

## Signature

```tsx
const WizardStepIndicator: React.FunctionComponent<WizardStepIndicatorProps>
```

## Examples

```tsx
tsx
<WizardStepIndicator
  steps={[
    { id: 'step1', label: 'Upload File', hasError: false },
    { id: 'step2', label: 'Map Fields', hasError: false },
    { id: 'step3', label: 'Review', hasError: false }
  ]}
  currentStepId="step2"
  completedSteps={['step1']}
  onStepClick={(stepId) => navigateToStep(stepId)}
/>
```

## Live preview

[Open WizardStepIndicator in the playground →](<https://story.uxp.iviva.com/?path=/docs/forms-wizard-wizardstepindicator--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/forms-wizard-wizardstepindicator--docs&args=currentStepId%3Astep2&props=%7B%22steps%22%3A%5B%7B%22id%22%3A%22step1%22%2C%22label%22%3A%22Upload+File%22%2C%22hasError%22%3Afalse%7D%2C%7B%22id%22%3A%22step2%22%2C%22label%22%3A%22Map+Fields%22%2C%22hasError%22%3Afalse%7D%2C%7B%22id%22%3A%22step3%22%2C%22label%22%3A%22Review%22%2C%22hasError%22%3Afalse%7D%5D%2C%22completedSteps%22%3A%5B%22step1%22%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|steps|[WizardStep[]](../types/WizardStep.md)|Yes|-|-|
|currentStepId|string|Yes|-|-|
|onStepClick|(stepId: string) => void|No|-|-|
|completedSteps|string[]|No|-|-|
|disableAutoScroll|boolean|No|-|-|

## Related Types

- [WizardStepIndicatorProps](../types/WizardStepIndicatorProps.md)
- [WizardStep](../types/WizardStep.md)

