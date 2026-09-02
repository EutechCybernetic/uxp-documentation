# IProgressBarProps


ProgressBar component props


## Definition

```tsx
interface IProgressBarProps {
    /**
     * Completion 0-100. Ignored (and unnecessary) when `indeterminate`.
     */
    value?: number

    /**
     * Continuous sliding animation for work of unknown length.
     */
    indeterminate?: boolean

    /**
     * @default 'medium'
     */
    size?: ProgressBarSize

    /**
     * @default 'primary'
     */
    variant?: ProgressBarVariant

    /**
     * Show the percentage (or `label`) beside the bar.
     */
    showLabel?: boolean

    /**
     * Overrides the default `NN%` label text.
     */
    label?: string

    /**
     * Any additional css classes to include
     */
    className?: string

    /**
     * Additional inline styles for the container
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

