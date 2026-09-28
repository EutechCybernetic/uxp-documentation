# PaginationComponent

> **Part of [TableComponent](TableComponent.md).** Usually used through TableComponent. Use it directly to build a custom layout.



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

## Live preview

[Open PaginationComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-tables-paginationcomponent--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|total|number|Yes|-|120|
|pageSize|number|Yes|-|10|
|page|number|Yes|-|1|
|onPageSizeChange|(pageSize: number) => void|Yes|-|Log onPageSizeChange={(pageSize) => console.log('page size', pageSize)}|
|onPageChange|(page: number) => void|Yes|-|Log onPageChange={(page) => console.log('page', page)}|
|dataLength|number|No|0|10|
|loading|boolean|No|-|-|
|allowPageSizeChange|boolean|No|-|-|

## Related Types

- [PaginationProps](../types/PaginationProps.md)

