# IItemCardProps

## Definition

```tsx
export interface IItemCardProps {
    /**
     * A reference to the data to be rendered as a card.
     */
    item?: any,

    /**
     * The name of the field within the `item` that has the url of an image to be shown
     */
    imageField?: string,

    /**
     * The name of the field within `item` that has the title of the object
     */
    titleField?: string,

    /**
     * The name of the field within 'item' that holds the subtitle of the object
     */
    subTitleField?: string,

    /**
     * This name of the field within `item` that contains any 'name' associated with the object.
     * This property is used only if the imageField value is not set. The name is abbreviated and set as the profile image.
     */
    nameField?: string,

    /**
     * Any extra css classes to biind to the card.
     */
    className?: string,

    /**
     * These parameres will enable option to pass a value for each fields inseat of the field name.
     * Using these, users/developers will be able to provide static values
     */
    image?: string,
    name?: string,
    title?: string,
    subTitle?: string,

    /**
     * Size of the profile image: small (2rem), medium (3rem, default), large (4rem), or custom CSS unit (e.g., "5rem")
     */
    size?: Size,

    /**
     * Shape of the profile image: circle (default) or square
     */
    shape?: Shape
}
```

## Usage

```tsx
import { IItemCardProps } from 'uxp/components';
```

## Related Types

- [Size](../types/Size.md)
- [Shape](../types/Shape.md)

