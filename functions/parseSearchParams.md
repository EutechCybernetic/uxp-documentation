# parseSearchParams


Shared utility function to parse URLSearchParams into a typed object.
Handles JSON-encoded values using the toJSON utility.



## Installation

```tsx
import { parseSearchParams } from 'uxp/components';
```

## Signature

```tsx
function parseSearchParams(params: URLSearchParams): SearchParams<T>
```

## Examples

```tsx
const params = new URLSearchParams('?name=John&age=30');
const result = parseSearchParams<{ name: string; age: string }>(params);
// result: { name: 'John', age: '30' }
```

```tsx
const params = new URLSearchParams('?user={"name":"John","age":30}');
const result = parseSearchParams<{ user: { name: string; age: number } }>(params);
// result: { user: { name: 'John', age: 30 } }
```

