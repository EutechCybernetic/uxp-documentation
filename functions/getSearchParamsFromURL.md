# getSearchParamsFromURL


Extracts search parameters from a URL or search string into a typed object.
Handles JSON-encoded values using the toJSON utility.



## Installation

```tsx
import { getSearchParamsFromURL } from 'uxp/components';
```

## Signature

```tsx
function getSearchParamsFromURL(urlOrSearch: string): SearchParams<T>
```

## Examples

```tsx
const params = getSearchParamsFromURL<{ name: string; age: string }>('?name=John&age=30');
// params: { name: 'John', age: '30' }
```

```tsx
const params = getSearchParamsFromURL<{ user: { name: string; age: number } }>(
  'http://example.com?user={"name":"John","age":30}'
);
// params: { user: { name: 'John', age: 30 } }
```

