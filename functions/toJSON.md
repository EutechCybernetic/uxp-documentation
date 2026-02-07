# toJSON


Converts any value to JSON object with type inference from value or default



## Installation

```tsx
import { toJSON } from 'uxp/components';
```

## Signature

```tsx
function toJSON(value: T | string | null | undefined, def?: T): T
```

## Examples

```tsx
const obj = toJSON('{"name": "John"}', {});
console.log(obj.name); // "John"

// Type is inferred from the value when it's typed
const links = toJSON(comparison?.dbLinks, []); // NavigationLink[]

// Type is inferred from default when value is string
const parsed = toJSON('{"key": "value"}', {});
```

