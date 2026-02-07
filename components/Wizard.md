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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|steps|[IWizardStep[]](../types/IWizardStep.md)|Yes|-|-|
|completionTitle|string|No|-|-|
|onComplete|() => Promise<void>|No|-|-|

## Related Types

- [IWizardProps](../types/IWizardProps.md)
- [IWizardStep](../types/IWizardStep.md)
- [IWizardStepProps](../types/IWizardStepProps.md)

