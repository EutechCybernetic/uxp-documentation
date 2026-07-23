# PinnedItemsButtonProps




## Definition

```tsx
export interface PinnedItemsButtonProps {
    /** Object type(s) to filter the pinboard by (comma list, `*` = all). Drives which pins show. */
    objectType: string;
    /** Human label for the object type (used in empty-state / titles). */
    objectTypeLabel?: string;
    /** Field name to expose as the option label. Defaults to 'label'. */
    labelField?: string;
    /** Field name to expose as the option value. Defaults to 'value'. */
    valueField?: string;
    /** The host field's current selection — enables the pin/unpin-current action. */
    currentItem?: PinboardCurrentItem | null;
    /** Called with an option (shaped by labelField/valueField) when a pin is picked. */
    onSelect: (option: any) => void;
}
```

## Usage

```tsx
import { PinnedItemsButtonProps } from 'uxp/components';
```

## Related Types

- [PinboardCurrentItem](../types/PinboardCurrentItem.md)

