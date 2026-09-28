# LoadingFeedback


LoadingFeedback - A user-friendly loading overlay component
Blocks UI interaction and provides clear visual feedback



## Installation

```tsx
import { LoadingFeedback } from 'uxp/components';
```

## Signature

```tsx
const LoadingFeedback: React.FunctionComponent<LoadingFeedbackProps>
```

## Examples

```tsx
tsx
<LoadingFeedback
  show={isLoading}
  message="Processing your request"
  submessage="Please wait..."
  progress={45}
/>
```

## Live preview

[Open LoadingFeedback in the playground →](<https://story.uxp.iviva.com/?path=/docs/loaders-loadingfeedback--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|true|
|message|string|No|-|"Saving changes"|
|submessage|string|No|-|"Please wait"|
|progress|number|No|-|-|
|icon|any|No|-|-|

## Related Types

- [LoadingFeedbackProps](../types/LoadingFeedbackProps.md)

