# ChipProps


Props for the Chip component


## Definition

```tsx
interface ChipProps {
    /**
     * Optional icon identifier for the chip (e.g., FontAwesome icon name).
     */
    icon?: string;

    /**
     * The label content to display in the chip. Can be a string or a React node.
     * Omit or pass an empty string to render icon-only (circle) mode.
     */
    label?: string | ReactNode;

    /**
     * Position of the icon relative to the label. Defaults to 'left'.
     */
    iconPosition?: 'left' | 'right';

    /**
     * Background color of the chip. Accepts any valid CSS color value.
     */
    backgroundColor?: string;

    /**
     * Text color of the chip. Accepts any valid CSS color value.
     */
    textColor?: string;

    /**
     * Callback function executed when the chip is clicked.
     */
    onClick?: (e: React.MouseEvent<HTMLDivElement>) => void;

    /**
     * Additional CSS styles to apply to the chip.
     */
    additionalStyles?: React.CSSProperties;

    variant?: ChipVariant,

    size?: ChipSize
}
```

## Usage

```tsx
import { ChipProps } from 'uxp/components';
```

## Related Types

- [ChipVariant](../types/ChipVariant.md)
- [ChipSize](../types/ChipSize.md)

