# toNum


Converts any value to number with fallback



## Installation

```tsx
import { toNum } from 'uxp/components';
```

## Signature

```tsx
function toNum(value: any, def?: number): number | undefined
```

## Examples

```tsx
const num = toNum('123.45', 0);
console.log(num); // 123.45
```

