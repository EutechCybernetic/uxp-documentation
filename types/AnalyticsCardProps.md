# AnalyticsCardProps


Props for the AnalyticsCard component.


## Definition

```tsx
export interface AnalyticsCardProps {
    /**
     * FontAwesome icon identifier for the card.
     */
    icon: string;

    /**
     * Value to display (number or string).
     */
    value: string | number;

    /**
     * Label for the card.
     */
    label: string;

    /**
     * Whether the card is in loading state.
     */
    loading?: boolean;

    /**
     * Use small variant for compact display.
     */
    small?: boolean;

    /**
     * Optional element rendered beside the label (e.g. a Chip showing the change vs a previous period).
     */
    badge?: React.ReactNode;

    /**
     * Additional class name for the card root (for app-level style overrides).
     */
    className?: string;

    /**
     * Optional short line rendered under the label row (e.g. "of open time was active").
     */
    note?: string;
}
```

## Usage

```tsx
import { AnalyticsCardProps } from 'uxp/components';
```

