# InfoCardGroupProps


Props for the InfoCardGroup component (display-only)


## Definition

```tsx
export interface InfoCardGroupProps {
    /**
     * Array of items to display as profile images
     * @example
     * [
     *   { name: 'Alex Morgan', email: 'alex.morgan@example.com' },
     *   { name: 'Priya Nair', email: 'priya.nair@example.com' },
     *   { name: 'Chen Wei', email: 'chen.wei@example.com' },
     *   { name: 'Sam Carter', email: 'sam.carter@example.com' },
     *   { name: 'Lena Fischer', email: 'lena.fischer@example.com' },
     * ]
     */
    items: any[];

    /**
     * Field mappings for displaying image/name (maps data fields to image/name)
     * @example { name: 'name', title: 'name', subtitle: 'email' }
     */
    fields?: InfoCardFields;

    /**
     * Details content to show in nested dropdown on ItemCard click
     * Can be:
     * - React.ReactNode: Static content
     * - Function returning React.ReactNode: Dynamic custom content
     * - Function returning ObjectInfoCardProps: Config for ObjectInfoCard
     */
    details?: InfoCardDetailsContent;

    /**
     * Maximum number of profile images to display before showing "+N" badge
     * Defaults to 5
     * @example 3
     */
    maxVisible?: number;

    /**
     * Size of the profile images: small (2rem), medium (3rem, default), large (4rem), or custom CSS unit
     */
    size?: Size;

    /**
     * Shape of the profile images: circle (default) or square
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
import { InfoCardGroupProps } from 'uxp/components';
```

## Related Types

- [InfoCardFields](../types/InfoCardFields.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

