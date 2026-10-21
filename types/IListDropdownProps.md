# IListDropdownProps


Props for ListDropdown


## Definition

```tsx
interface IListDropdownProps {
    /**
     * The trigger text, usually a count
     * @example "128 pages"
     */
    label: string;
    /**
     * The items shown in the dropdown, in order: plain text, or a name with a muted second line
     * @example ["iviva-ibms-app/dashboard-view", "iviva-ibms-app/equipment-view", "iviva-ibms-app/alarm-view"]
     */
    items: (string | IListDropdownItem)[];
    /**
     * The trigger's colour, as a chip variant
     * @default "secondary"
     */
    variant?: ChipVariant;
    /**
     * Show a search box when there are more items than this
     * @default 10
     */
    searchThreshold?: number;
    /** Additional class name */
    className?: string;
}
```

## Usage

```tsx
import { IListDropdownProps } from 'uxp/components';
```

## Related Types

- [IListDropdownItem](../types/IListDropdownItem.md)
- [ChipVariant](../types/ChipVariant.md)

