# ObjectDetailsPanelProps


Props for the ObjectDetailsPanel, extending base props with data source.


## Definition

```tsx
type ObjectDetailsPanelProps = ObjectDetailsPanelBaseProps & {
    /**
     * Row data to display, either static or a function that fetches it asynchronously.
     * @example { id: 1, name: 'Chiller 01', status: 'Running', location: 'Level 1' }
     */
    data: RowData | (() => Promise<RowData>);
};
```

## Usage

```tsx
import { ObjectDetailsPanelProps } from 'uxp/components';
```

