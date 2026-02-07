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
    spacingMode?: SpacingMode
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { IFormFieldProps } from 'uxp/components';
```

## Related Types

- [SpacingMode](../types/SpacingMode.md)

