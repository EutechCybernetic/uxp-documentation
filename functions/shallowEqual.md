# shallowEqual


Shallow-compares two objects one level deep (keys + `Object.is` on each value).
Use as a `React.memo` comparator when a component receives a props bag that is
rebuilt as a fresh object literal every render (identical entries → equal).



## Installation

```tsx
import { shallowEqual } from 'uxp/components';
```

## Signature

```tsx
function shallowEqual(a?: Record<string, any>, b?: Record<string, any>): boolean
```

## Examples

```tsx
export default memo(MyView, (a, b) => shallowEqual(a.props, b.props));
```

