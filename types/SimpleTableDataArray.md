# SimpleTableDataArray

Data loading variant: Static array


## Definition

```tsx
interface SimpleTableDataArray {
    /**
     * @example
     * [
     *   { id: 1, name: 'Session timeout (min)', value: '30' },
     *   { id: 2, name: 'Default currency', value: 'SGD' },
     *   { id: 3, name: 'Week starts on', value: 'Monday' },
     * ]
     */
    data: RowData[];
    total?: number;
}
```

## Usage

```tsx
import { SimpleTableDataArray } from 'uxp/components';
```

## Related Types

- [RowData](../types/RowData.md)

