# FormFeedback

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

## Live preview

[Open FormFeedback in the playground →](<https://story.uxp.iviva.com/?path=/docs/feedback-formfeedback--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|validInput|boolean|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|"Asset name is required"|

## Related Types

- [IFormFeedbackProps](../types/IFormFeedbackProps.md)

