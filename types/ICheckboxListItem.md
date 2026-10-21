# ICheckboxListItem


One choice in a CheckboxList


## Definition

```tsx
interface ICheckboxListItem {
    /** A unique id, returned in `selected` */
    id: string;
    /** The choice's name */
    label: string;
    /** A muted second line, e.g. an id or the groups it is assigned to */
    description?: string;
    /** A status tag on the right, e.g. "New" or "Replaces existing" */
    tag?: { label: string; variant?: ChipVariant };
    /** The row cannot be ticked or unticked */
    disabled?: boolean;
}
```

## Usage

```tsx
import { ICheckboxListItem } from 'uxp/components';
```

## Related Types

- [ChipVariant](../types/ChipVariant.md)

