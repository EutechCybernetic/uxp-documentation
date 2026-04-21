# PaginationComponent



Pagination controls — compact prev/next with a page-size dropdown.
Renders as a flat set of controls; layout (left/right slots) is handled by the parent.



## Installation

```tsx
import { PaginationComponent } from 'uxp/components';
```

## Signature

```tsx
const PaginationComponent: React.FunctionComponent<PaginationProps>
```

## Examples

```tsx
<PaginationComponent
  total={total}
  pageSize={pageSize}
  page={page}
  onPageChange={setPage}
  onPageSizeChange={ps => { setPageSize(ps); setPage(1); }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|total|number|Yes|-|-|
|pageSize|number|Yes|-|-|
|page|number|Yes|-|-|
|onPageSizeChange|(pageSize: number) => void|Yes|-|-|
|onPageChange|(page: number) => void|Yes|-|-|
|dataLength|number|No|-|-|
|loading|boolean|No|-|-|
|allowPageSizeChange|boolean|No|-|-|

## Related Types

- [PaginationProps](../types/PaginationProps.md)

