# InputSizeProps

Common input size control props



## Definition

```tsx
export interface InputSizeProps {
    /**
     * Custom minimum width for the input.
     * Can be number (converted to rem) or string with units.
     * Overrides default 8.333rem (100px) min-width.
     */
    minWidth?: number | string;

    /**
     * Custom maximum width for the input.
     * Can be number (converted to rem) or string with units.
     * Overrides default 33.333rem (400px) max-width.
     */
    maxWidth?: number | string;

    /**
     * Explicit width (sets both min and max to same value).
     * Takes precedence over minWidth/maxWidth if provided.
     */
    width?: number | string;

    /**
     * If true, input grows to 100% of container width (ignores min/max).
     * Useful for inline forms or flex layouts.
     */
    fullWidth?: boolean;

    /**
     * Explicit height. Can be number (converted to rem) or CSS string (e.g. '300px', '50%').
     * Takes precedence over minHeight/maxHeight if provided.
     */
    height?: number | string;

    /**
     * Custom minimum height. Can be number (converted to rem) or CSS string.
     */
    minHeight?: number | string;

    /**
     * Custom maximum height. Can be number (converted to rem) or CSS string.
     */
    maxHeight?: number | string;
}
```

## Usage

```tsx
import { InputSizeProps } from 'uxp/components';
```

