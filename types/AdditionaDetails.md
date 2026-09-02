# AdditionaDetails


Configuration for additional details tabs in the ObjectDetailsPanel.


## Definition

```tsx
export interface AdditionaDetails {
    /**
     * FontAwesome icon identifier for the additional details tab.
     */
    icon: string;

    /**
     * Unique identifier for the additional details tab.
     */
    id: string;

    /**
     * Label for the additional details tab.
     */
    label: string;

    /**
     * Content to display in the additional details tab, either static or a function of row data.
     */
    content: DetailsContent;

    /**
     * Whether to show a refresh button in the tab header. Defaults to false.
     * Injected tabs (declared in bundle.json `objectTabs`) are refreshable by default.
     */
    refreshable?: boolean;

    /**
     * Event names (fired via eventDispatcher) that automatically refresh this tab's content.
     */
    events?: string[];

    /**
     * Optional access rule for this tab. Denied users don't see the tab (or see
     * the not-authorised error when `showUnauthorizedError` is set).
     */
    access?: AccessControl;
}
```

## Usage

```tsx
import { AdditionaDetails } from 'uxp/components';
```

## Related Types

- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [AccessControl](../types/AccessControl.md)

