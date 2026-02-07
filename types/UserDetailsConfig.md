# UserDetailsConfig

Configuration for user details display using ObjectInfoCard


## Definition

```tsx
interface UserDetailsConfig {
    /**
     * Array of fields to display
     */
    fields: UserDetailField[];

    /**
     * Number of columns for grid layout (1, 2, 3, or 4). Defaults to 2.
     */
    columns?: 1 | 2 | 3 | 4;

    /**
     * Layout direction for label and value. Defaults to 'horizontal'.
     */
    layout?: 'horizontal' | 'vertical';

    /**
     * Alignment for value text. Defaults to 'end' for vertical, 'start' for horizontal.
     */
    valueAlign?: 'start' | 'end';
}
```

## Usage

```tsx
import { UserDetailsConfig } from 'uxp/components';
```

## Related Types

- [UserDetailField](../types/UserDetailField.md)
- [UserDetails](../types/UserDetails.md)

