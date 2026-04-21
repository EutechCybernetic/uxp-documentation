# ToolbarItem


Configuration for a toolbar item in the ObjectDetailsPanel.


## Definition

```tsx
export interface ToolbarItem {
    /**
     * FontAwesome icon identifier for the toolbar item.
     */
    icon: string;

    /**
     * Label for the toolbar item, translated via context.
     */
    label: string;

    /**
     * Callback function triggered when the toolbar item is clicked, receiving the event and row data.
     */
    onClick?: (e: MouseEvent<HTMLDivElement>, row: RowData) => void;

    /**
     * Optional dropdown content to render when the toolbar item is clicked.
     * Pass a `ReactNode` for fully custom content, or a `BaseAction[]` for a simple
     * config-based action list (icon + label + onClick).
     */
    renderOptionsDropdown?: React.ReactNode | BaseAction[];

    /**
     * Optional function to control visibility of the toolbar item based on row data.
     * If not provided, the toolbar item is always visible.
     * @param item - The row data
     * @returns true to show the toolbar item, false to hide it
     */
    visible?: (item: RowData) => boolean;
}
```

## Usage

```tsx
import { ToolbarItem } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)
- [BaseAction](../types/BaseAction.md)

