# CustomDetailsPanelProps


Configuration for rendering a custom details panel component.


## Definition

```tsx
interface CustomDetailsPanelProps extends BaseDetailsPanelConfig {
    /**
     * Custom component to render for the details panel, receiving the row ID and close callback.
     */
    renderDetails: (id: string, onClose: () => void) => ReactNode;
}
```

## Usage

```tsx
import { CustomDetailsPanelProps } from 'uxp/components';
```

## Related Types

- [BaseDetailsPanelConfig](../types/BaseDetailsPanelConfig.md)
- [OSCColumn](../types/OSCColumn.md)
- [Column](../types/Column.md)
- [ExportColumnFormatter](../types/ExportColumnFormatter.md)
- [RowData](../types/RowData.md)

