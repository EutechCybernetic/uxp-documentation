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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=loaders-loadingfeedback--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="LoadingFeedback live preview"
></iframe>

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

