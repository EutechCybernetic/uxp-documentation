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
     */
    renderOptionsDropdown?: React.ReactNode;
}
```

## Usage

```tsx
import { ToolbarItem } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)

