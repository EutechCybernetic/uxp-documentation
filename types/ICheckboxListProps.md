# ICheckboxListProps


Props for CheckboxList


## Definition

```tsx
interface ICheckboxListProps {
    /**
     * The choices, in order
     * @example [{ id: 'db2', label: 'Single Dashboard', description: 'db2', tag: { label: 'Replaces existing', variant: 'warning' } }, { id: 'db5', label: 'Energy overview', description: 'db5', tag: { label: 'New', variant: 'success' } }]
     */
    items: ICheckboxListItem[];
    /**
     * Ids of the ticked choices
     * @example ["db2"]
     */
    selected: string[];
    /**
     * Called with the new list of ticked ids
     */
    onChange: (selected: string[]) => void;
    /**
     * A heading above the list
     * @example "Linked dashboards"
     */
    title?: string;
    /**
     * Show a "Select all" row first
     * @default true
     */
    showSelectAll?: boolean;
    /**
     * Label of the "Select all" row
     */
    selectAllLabel?: string;
    /**
     * Show "x of y selected" on the "Select all" row
     * @default true
     */
    showCount?: boolean;
    /**
     * Shown in place of the list when there are no items
     */
    emptyText?: string;
    /** Additional class name */
    className?: string;
}
```

## Usage

```tsx
import { ICheckboxListProps } from 'uxp/components';
```

## Related Types

- [ICheckboxListItem](../types/ICheckboxListItem.md)
- [ChipVariant](../types/ChipVariant.md)

