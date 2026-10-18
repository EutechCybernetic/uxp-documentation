# IProgressBarProps


ProgressBar component props


## Definition

```tsx
interface IProgressBarProps {
    /**
     * Completion 0-100. Ignored (and unnecessary) when `indeterminate`.
     * @example 57
     */
    value?: number

    /**
     * Continuous sliding animation for work of unknown length. A circular bar spins.
     * @default false
     * @example false
     */
    indeterminate?: boolean

    /**
     * The bar's thickness. For a ring, its diameter.
     * @default 'medium'
     * @example "medium"
     */
    size?: ProgressBarSize

    /**
     * The fill colour. `primary` uses the primary button colour.
     * @default 'primary'
     * @example "primary"
     */
    variant?: ProgressBarVariant

    /**
     * Show the percentage (or `label`) beside the bar, in the header row (`labelPosition="top"`)
     * or inside the ring (`shape="circular"`).
     * @default false
     * @example true
     */
    showLabel?: boolean

    /**
     * Overrides the default `NN%` label text.
     * @example "4 / 7 steps"
     */
    label?: string

    /**
     * A straight bar or a ring. The ring's diameter follows `size` and its colour follows `variant`.
     * @default 'linear'
     * @example "linear"
     */
    shape?: ProgressBarShape

    /**
     * Circular only: what shows in the middle of the ring. Replaces the `showLabel` text.
     * @example centerContent={<span>4 / 7</span>}
     */
    centerContent?: React.ReactNode

    /**
     * Linear only: `end` puts the label after the bar. `top` puts a header row above a full-width bar,
     * with `title` on the left and the label on the right.
     * @default 'end'
     * @example "top"
     */
    labelPosition?: ProgressBarLabelPosition

    /**
     * Linear with `labelPosition="top"`: the text on the left of the header row.
     * @example "Account setup"
     */
    title?: React.ReactNode

    /**
     * The colour of the empty part. `strong` stays visible on a grey background.
     * @default 'subtle'
     * @example "strong"
     */
    track?: ProgressBarTrack

    /**
     * Any additional css classes to include
     */
    className?: string

    /**
     * Additional inline styles for the container
     * @example { maxWidth: 360 }
     */
    style?: React.CSSProperties
}
```

## Usage

```tsx
import { IProgressBarProps } from 'uxp/components';
```

## Related Types

- [ProgressBarSize](../types/ProgressBarSize.md)
- [ProgressBarVariant](../types/ProgressBarVariant.md)
- [ProgressBarShape](../types/ProgressBarShape.md)
- [ProgressBarLabelPosition](../types/ProgressBarLabelPosition.md)
- [ProgressBarTrack](../types/ProgressBarTrack.md)

