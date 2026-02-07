# simpleHash


Creates a simple hash from a string with optional prefix



## Installation

```tsx
import { simpleHash } from 'uxp/components';
```

## Signature

```tsx
function simpleHash(str: string, prefix?: any, options?: { base?: number, ignorePrefix?: boolean }): string
```

## Examples

```tsx
const hash = simpleHash('my-string', 'prefix-');
console.log(hash); // "prefix-123456789"
```

