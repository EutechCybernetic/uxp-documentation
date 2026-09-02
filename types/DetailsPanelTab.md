# DetailsPanelTab


Configuration for a details panel tab with toolbar and content.


## Definition

```tsx
export interface DetailsPanelTab {
    /**
     * Unique identifier for the tab.
     */
    id: string;

    /**
     * Label text for the tab (optional if icon provided).
     */
    label?: string;

    /**
     * FontAwesome icon identifier for the tab (optional if label provided).
     */
    icon?: string;

    /**
     * Toolbar items specific to this tab (optional).
     * Can be static or a function that returns toolbar items based on row data.
     */
    toolbarItems?: {
        left: ToolbarItem[];
        right: ToolbarItem[];
    } | ((item: RowData) => {
        left: ToolbarItem[];
        right: ToolbarItem[];
    });

    /**
     * Details content for this tab (mandatory).
     */
    details: ((item: RowData) => ObjectInfoCardProps) | DetailsContent;

    /**
     * Optional access rule for this tab. Denied users don't see the tab (or see
     * the not-authorised error when `showUnauthorizedError` is set).
     */
    access?: AccessControl;
}
```

## Usage

```tsx
import { DetailsPanelTab } from 'uxp/components';
```

## Related Types

- [ToolbarItem](../types/ToolbarItem.md)
- [RowData](../types/RowData.md)
- [BaseAction](../types/BaseAction.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [DetailsContent](../types/DetailsContent.md)
- [AccessControl](../types/AccessControl.md)

