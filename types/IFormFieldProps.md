# IFormFieldProps

## Definition

```tsx
interface IFormFieldProps {
    /**Set this to true to have multiple fields in a single horizontal line */
    inline?: boolean,
    /**
     * Any extra css classes to attach to the field
     */
    className?: string,

    /**
     * A background color to set for the field
     */
    backgroundColor?: string,
    /**
     * Additional inline styles
     */
    style?: React.CSSProperties,
    /**
     * Remove padding from the field
     */
    noPadding?: boolean,
    /**
     * Remove margin from the field
     */
    noMargin?: boolean,
    /**
     * Remove all margins except bottom margin
     */
    marginBottomOnly?: boolean,
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { IFormFieldProps } from 'uxp/components';
```

