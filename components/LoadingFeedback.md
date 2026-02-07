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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|message|string|No|-|-|
|submessage|string|No|-|-|
|progress|number|No|-|-|
|icon|any|No|-|-|

## Related Types

- [LoadingFeedbackProps](../types/LoadingFeedbackProps.md)

