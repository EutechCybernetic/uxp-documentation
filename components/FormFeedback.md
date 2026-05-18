# FormFeedback

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-formfeedback--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="FormFeedback live demo"
></iframe>


This is used to provide a success or error summary message for forms



## Installation

```tsx
import { FormFeedback } from 'uxp/components';
```

## Signature

```tsx
const FormFeedback: React.FunctionComponent<IFormFeedbackProps>
```

## Examples

```tsx
FormFeedback validInput>Form feedback ( valid )</FormFeedback>
```

```tsx
<FormFeedback validInput={false}>Form feedback ( invalid )</FormFeedback>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|validInput|boolean|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IFormFeedbackProps](../types/IFormFeedbackProps.md)

