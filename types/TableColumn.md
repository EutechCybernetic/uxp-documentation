# TableColumn


Table column definition, extending base Column but omitting advanced features.
`isSortable` sorts static data in the page, and passes the sort to a data function.


## Definition

```tsx
export interface TableColumn extends Omit<Column, 'onClickColumn' | 'isResizable'> { }
```

## Usage

```tsx
import { TableColumn } from 'uxp/components';
```

## Related Types

- [Column](../types/Column.md)

