# ProgressBar


A determinate or indeterminate progress bar, as a straight bar or a ring.



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
<ProgressBar value={4} labelPosition="top" title="Setup" showLabel label="4 / 7" track="strong" />
<ProgressBar value={57} shape="circular" size="large" centerContent={<span>4 / 7</span>} />
```

## Live preview

[Open ProgressBar in the playground →](<https://story.uxp.iviva.com/?path=/docs/loaders-progressbar--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|number|No|-|57|
|indeterminate|boolean|No|false|false|
|size|[ProgressBarSize](../types/ProgressBarSize.md)|No|'medium'|"medium"|
|variant|[ProgressBarVariant](../types/ProgressBarVariant.md)|No|'primary'|"primary"|
|showLabel|boolean|No|false|true|
|label|string|No|-|"4 / 7 steps"|
|shape|[ProgressBarShape](../types/ProgressBarShape.md)|No|'linear'|"linear"|
|centerContent|React.ReactNode|No|-|centerContent={<span>4 / 7</span>}|
|labelPosition|[ProgressBarLabelPosition](../types/ProgressBarLabelPosition.md)|No|'end'|"top"|
|title|React.ReactNode|No|-|"Account setup"|
|track|[ProgressBarTrack](../types/ProgressBarTrack.md)|No|'subtle'|"strong"|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|{ maxWidth: 360 }|

## Related Types

- [IProgressBarProps](../types/IProgressBarProps.md)
- [ProgressBarSize](../types/ProgressBarSize.md)
- [ProgressBarVariant](../types/ProgressBarVariant.md)
- [ProgressBarShape](../types/ProgressBarShape.md)
- [ProgressBarLabelPosition](../types/ProgressBarLabelPosition.md)
- [ProgressBarTrack](../types/ProgressBarTrack.md)

