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

