# ExtendedColumn


Extended column with a calculated width property.


## Definition

```tsx
export interface ExtendedColumn extends Column {
    /** Actual width of the column in pixels after calculations */
    width: number;
    /**
     * Edit and delete columns: the action, so phones can list it in the row actions sheet.
     * @internal
     */
    rowAction?: { label?: string; onClick: (item: any) => any; visible?: (item: any) => boolean };
    /**
     * Actions column: the row actions, so phones can list them in the row actions sheet.
     * @internal
     */
    rowActions?: Action[] | ((item: any) => ReactNode | Action[]);
}
```

## Usage

```tsx
import { ExtendedColumn } from 'uxp/components';
```

## Related Types

- [Column](../types/Column.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)

