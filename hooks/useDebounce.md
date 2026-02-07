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
const [debounced, updateValue] = useDebounceAdvanced(query, 500);
updateValue('manually set value');
```

## Related Types

- [DebounceHook](../types/DebounceHook.md)

