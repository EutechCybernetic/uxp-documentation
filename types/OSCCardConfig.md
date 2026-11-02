# OSCCardConfig


How object search shows a row as a card (card mode). Each part is a row field name
or a function of the row.


## Definition

```tsx
export interface OSCCardConfig {
    /** Title (one line) */
    title: OSCCardField<ReactNode>
    /** Second line */
    description?: OSCCardField<ReactNode>
    /** Picture url (or your own content) for the top part */
    image?: OSCCardField<string | ReactNode>
    /** Icon for the top part when there is no picture, e.g. 'fal box' */
    icon?: OSCCardField<string>
    /** Small chips (a field holding a list or comma-separated text, or a function) */
    chips?: OSCCardField<ReactNode[] | string>
    /** Chip on the picture, top right */
    badge?: OSCCardField<ObjectCardBadge | string>
    /** Smallest card width; cards stretch to fill the row (default '13rem') */
    minWidth?: string
    /** Card shape, width / height (default '3 / 4', taller than wide) */
    aspect?: string
    /**
     * Picture shape instead, width / height (e.g. '1 / 1'): the picture keeps it and the card is as tall
     * as the picture and its lines. `aspect` is not used then.
     */
    imageAspect?: string
}
```

## Usage

```tsx
import { OSCCardConfig } from 'uxp/components';
```

## Related Types

- [OSCCardField](../types/OSCCardField.md)
- [RowData](../types/RowData.md)
- [ObjectCardBadge](../types/ObjectCardBadge.md)
- [ChipVariant](../types/ChipVariant.md)

