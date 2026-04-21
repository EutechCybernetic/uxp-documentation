# ObjectInfoCardProps


Props for the ObjectInfoCard component.


## Definition

```tsx
export interface ObjectInfoCardProps {
    /**
     * Array of fields to display in the card.
     */
    fields: ObjectField[];

    /**
     * Number of columns for the grid layout (1, 2, 3, or 4). Defaults to 2.
     */
    columns?: 1 | 2 | 3 | 4;

    /**
     * Layout direction for label and value. Defaults to 'horizontal'.
     * - 'horizontal': Label and value displayed on the same line (label : value)
     * - 'vertical': Value displayed below the label
     */
    layout?: 'horizontal' | 'vertical';

    /**
     * Alignment for the value text. Defaults to 'end' for vertical layout, 'start' for horizontal.
     * - 'start': Align value to the start (left in LTR, right in RTL)
     * - 'end': Align value to the end (right in LTR, left in RTL)
     */
    valueAlign?: 'start' | 'end';

    /**
     * Additional class names to apply to the card container.
     */
    className?: string;

    loading?: boolean;

    /**
     * An optional title for the card container
     */
    title?: string;
}
```

## Usage

```tsx
import { ObjectInfoCardProps } from 'uxp/components';
```

## Related Types

- [ObjectField](../types/ObjectField.md)

