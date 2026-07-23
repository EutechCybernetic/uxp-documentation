# debounce


Debounces function execution to prevent excessive calls



## Installation

```tsx
import { debounce } from 'uxp/components';
```

## Signature

```tsx
function debounce(func: F, waitMilliseconds?: any, options?: DebounceOptions): F
```

## Examples

```tsx
const debouncedSearch = debounce((query) => {
  console.log('Searching for:', query);
}, 300);
```

## Related Types

- [DebounceOptions](../types/DebounceOptions.md)

