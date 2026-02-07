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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|validInput|boolean|No|-|-|
|className|string|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IFormFeedbackProps](../types/IFormFeedbackProps.md)
- [SpacingMode](../types/SpacingMode.md)

