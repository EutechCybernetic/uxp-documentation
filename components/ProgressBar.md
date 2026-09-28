# ProgressBar


A determinate or indeterminate progress bar.



## Installation

```tsx
import { ProgressBar } from 'uxp/components';
```

## Signature

```tsx
const ProgressBar: React.FunctionComponent<IProgressBarProps>
```

## Examples

```tsx
tsx
<ProgressBar value={uploadPercent} showLabel />
<ProgressBar indeterminate variant="info" size="small" />
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=loaders-progressbar--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ProgressBar live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|number|No|-|60|
|indeterminate|boolean|No|-|-|
|size|[ProgressBarSize](../types/ProgressBarSize.md)|No|'medium'|-|
|variant|[ProgressBarVariant](../types/ProgressBarVariant.md)|No|'primary'|-|
|showLabel|boolean|No|-|-|
|label|string|No|-|"Uploading"|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|

## Related Types

- [IProgressBarProps](../types/IProgressBarProps.md)
- [ProgressBarSize](../types/ProgressBarSize.md)
- [ProgressBarVariant](../types/ProgressBarVariant.md)

