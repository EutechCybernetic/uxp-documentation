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

[Open ProgressBar in the playground →](<https://story.uxp.iviva.com/?path=/docs/loaders-progressbar--docs>)

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

