# Wizard



A wizard-style interface to guide users through a journey.
You can conditionally skip steps and validate steps before proceeding.



## Installation



```tsx
import {Wizard} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|steps|IWizardStep[]|A list of steps within the wizard. |
|completionTitle|string|What title should be shown on the 'next' button when we reach the last screen |
|onComplete|() => Promise<void>|This callback is run whenever they hit the final 'completion' action on the last step. It should be async so we can show a loading animation on the button |
### steps



---



A list of steps within the wizard.


|type|
|-|
|IWizardStep[]|
### completionTitle



---



What title should be shown on the 'next' button when we reach the last screen


|type|
|-|
|string|
### onComplete



---



This callback is run whenever they hit the final 'completion' action on the last step. It should be async so we can show a loading animation on the button


|type|
|-|
|() => Promise<void>|
