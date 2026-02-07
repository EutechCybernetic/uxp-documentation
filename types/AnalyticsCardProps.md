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
}
```

## Usage

```tsx
import { AnalyticsCardProps } from 'uxp/components';
```

