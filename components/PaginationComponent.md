# PaginationComponent

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-pagination-paginationcomponent--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="PaginationComponent live demo"
></iframe>




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

