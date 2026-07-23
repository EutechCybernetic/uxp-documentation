# UserInfoCardProps


Props for the UserInfoCard component


## Definition

```tsx
export interface UserInfoCardProps {
    /**
     * User key to fetch user details
     */
    userKey: number | string;

    /**
     * Details configuration - can be one of:
     * - Simple array: ['Phone', 'Email'] - auto-generates labels
     * - Full config: { fields: ['Phone'], columns: 2, layout: 'vertical' }
     * - Custom render: (user) => <div>{user.FullName}</div>
     */
    details?: UserInfoCardDetails;

    /**
     * Display variant: 'card' shows full card with title/subtitle, 'avatar' shows only profile image
     * Defaults to 'card'
     */
    variant?: 'card' | 'avatar';

    /**
     * Size of the profile image: small (2rem), medium (3rem, default), large (4rem), or custom CSS unit (e.g., "5rem")
     */
    size?: Size;

    /**
     * Shape of the profile image: circle (default) or square
     */
    shape?: Shape;

    /**
     * Position for the dropdown. Defaults to 'bottom-left'
     */
    dropdownPosition?: DropdownPosition;

    /**
     * Additional CSS class names
     */
    className?: string;

    /**
     * Inline styles
     */
    style?: React.CSSProperties;
}
```

## Usage

```tsx
import { UserInfoCardProps } from 'uxp/components';
```

## Related Types

- [UserInfoCardDetails](../types/UserInfoCardDetails.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [UserDetailField](../types/UserDetailField.md)
- [UserDetails](../types/UserDetails.md)
- [UserDetailsConfig](../types/UserDetailsConfig.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

