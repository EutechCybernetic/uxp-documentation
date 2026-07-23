# toCssValue


Coerce a dimension to a CSS value: numbers become `px`, strings pass through.



## Installation

```tsx
import { toCssValue } from 'uxp/components';
```

## Signature

```tsx
function toCssValue(value: number | string): string
```

## Examples

```tsx
toCssValue(24);      // '24px'
toCssValue('2rem');  // '2rem'
```

