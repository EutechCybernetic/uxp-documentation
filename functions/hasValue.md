# hasValue


Checks if a value has a meaningful value (not null, undefined, or empty)



## Installation

```tsx
import { hasValue } from 'uxp/components';
```

## Signature

```tsx
function hasValue(value: T | null | undefined, allowZero?: boolean, allowNegative?: boolean): value is NonNullable<T>
```

## Examples

```tsx
if (hasValue(userInput)) {
  console.log('User provided input');
}
```

