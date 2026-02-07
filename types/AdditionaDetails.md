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
}
```

## Usage

```tsx
import { AdditionaDetails } from 'uxp/components';
```

## Related Types

- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)

