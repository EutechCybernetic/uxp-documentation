# InfoCardGroupProps


Props for the InfoCardGroup component (display-only)


## Definition

```tsx
export interface InfoCardGroupProps {
    /**
     * Array of items to display as profile images
     */
    items: any[];

    /**
     * Field mappings for displaying image/name (maps data fields to image/name)
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

