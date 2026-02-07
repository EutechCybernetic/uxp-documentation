# TableColumn


Table column definition, extending base Column but omitting advanced features


## Definition

```tsx
export interface TableColumn extends Omit<Column, 'onClickColumn' | 'isResizable' | 'isSortable'> { }
```

## Usage

```tsx
import { TableColumn } from 'uxp/components';
```

## Related Types

- [Column](../types/Column.md)

