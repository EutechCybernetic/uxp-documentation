# SimpleTableProps

Combined props type - supports all variants


## Definition

```tsx
export type SimpleTableProps = SimpleTableBaseProps &
    (SimpleTableDataArray | SimpleTableDataFunction | SimpleTableDataPaginated) &
    (InlineEditingMode | RowInteractionMode | NoInteractionMode);
```

## Usage

```tsx
import { SimpleTableProps } from 'uxp/components';
```

