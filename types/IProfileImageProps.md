# IProfileImageProps

## Definition

```tsx
interface IProfileImageProps {
    /**
     * The url for the image to be shown, or icon pattern (e.g., "fas user", "phb house")
     */
    image?: string | IconProp;

    /**
     * Any name to be displayed. This is used only if the image is empty.
     * 2 letters will be derived from the name (typically the first letter of the first 2 words in the name)
     * and a background color will be chosen. Background colors are random but consistent.
     */
    name?: string;

    /**
     * Custom background color
     */
    bgColor?: string;

    /**
     * Custom text color (for initials)
     */
    textColor?: string;

    /**
     * Additional CSS class names
     */
    className?: string;

    /**
     * Inline styles for the container
     */
    style?: React.CSSProperties;

    /**
     * Size: small (2.67rem/32px), medium (3.33rem/40px, default), large (4rem/48px), or custom rem value (e.g., "5rem")
     */
    size?: Size;

    /**
     * Shape: circle (default) or square (slightly rounded)
     */
    shape?: Shape;

    /**
     * If true, renders the name text as-is without extracting acronym. Defaults to false.
     * Useful for displaying badges like "+2" or custom text.
     */
    skipAcronym?: boolean;

    /**
     * Border color for the profile image. If not provided, no border is applied.
     */
    borderColor?: string;

    /**
     * Border width. Defaults to '3px'. Only applied when borderColor is provided.
     */
    borderWidth?: string;
}
```

## Usage

```tsx
import { IProfileImageProps } from 'uxp/components';
```

## Related Types

- [Size](../types/Size.md)
- [Shape](../types/Shape.md)

