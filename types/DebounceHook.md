# DebounceHook

debounce hook will two params
first one is the value. Can be a string or a number
second one is the timout. This is optional, default is 300(ms)


## Definition

```tsx
type DebounceHook = (value: any, timeout?: number, returnUpdateFunction?: boolean) => any | [debouncedValue: any, updateValue: (value: any) => void, immediateUpdate: (value: any) => void]
```

## Usage

```tsx
import { DebounceHook } from 'uxp/components';
```

