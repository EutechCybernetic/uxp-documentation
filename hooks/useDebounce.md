# useDebounce

A custom hook that returns a debounced value and a function to update it programmatically.



## Installation

```tsx
import { useDebounce } from 'uxp/components';
```

## Signature

```tsx
function useDebounce(value: any, timeout: any, returnUpdateFunction: any): DebounceHook
```

## Examples

```tsx
const [debounced, updateValue] = useDebounceAdvanced(query);
```

```tsx
const [debounced, updateValue, immediateUpdate] = useDebounceAdvanced(query, 500);
immediateUpdate('set without debounce delay');
```

## Related Types

- [DebounceHook](../types/DebounceHook.md)

