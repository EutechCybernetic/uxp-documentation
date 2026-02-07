# DefaultDetailsPanelProps


Configuration for the default details panel using the built-in ObjectDetailsPanel.


## Definition

```tsx
type DefaultDetailsPanelProps = ObjectDetailsPanelBaseProps & BaseDetailsPanelConfig & {
    /**
     * Function to fetch details for the selected row based on its ID.
     */
    data: (id: string) => Promise<RowData>;
}
```

## Usage

```tsx
import { DefaultDetailsPanelProps } from 'uxp/components';
```

