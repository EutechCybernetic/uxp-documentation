# ObjectDetailsPanelProps


Props for the ObjectDetailsPanel, extending base props with data source.


## Definition

```tsx
type ObjectDetailsPanelProps = ObjectDetailsPanelBaseProps & {
    /**
     * Row data to display, either static or a function that fetches it asynchronously.
     */
    data: RowData | (() => Promise<RowData>);
};
```

## Usage

```tsx
import { ObjectDetailsPanelProps } from 'uxp/components';
```

