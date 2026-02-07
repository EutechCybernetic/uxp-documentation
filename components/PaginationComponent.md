# PaginationComponent



Pagination component



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
 onPageSizeChange={v => { setPageSize(v); setPage(1); }}
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
|children|React.ReactNode|No|-|-|
|loading|boolean|No|-|-|

## Related Types

- [PaginationProps](../types/PaginationProps.md)

