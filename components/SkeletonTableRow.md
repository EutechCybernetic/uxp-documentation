# SkeletonTableRow


Skeleton loading row component displayed while table data is loading.
Shows placeholder skeleton loaders in each cell.



## Installation

```tsx
import { SkeletonTableRow } from 'uxp/components';
```

## Signature

```tsx
const SkeletonTableRow: React.FunctionComponent<SkeletonTableRowProps>
```

## Examples

```tsx
tsx
<SkeletonTableRow columns={processedColumns} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|columns|{ [id: string]: ExtendedColumn }|Yes|-|-|

## Related Types

- [SkeletonTableRowProps](../types/SkeletonTableRowProps.md)
- [ExtendedColumn](../types/ExtendedColumn.md)
- [Column](../types/Column.md)

