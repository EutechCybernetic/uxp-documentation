# parseCSSUnit


Parses a CSS size string and extracts value and unit
Supports any CSS unit (px, rem, em, vh, vw, %, etc.)



## Installation

```tsx
import { parseCSSUnit } from 'uxp/components';
```

## Signature

```tsx
function parseCSSUnit(size: string): { value: number; unit: string } | null
```

## Examples

```tsx
const parsed = parseCSSUnit('5rem');
console.log(parsed); // { value: 5, unit: 'rem' }

const parsed2 = parseCSSUnit('60px');
console.log(parsed2); // { value: 60, unit: 'px' }

const parsed3 = parseCSSUnit('3.5em');
console.log(parsed3); // { value: 3.5, unit: 'em' }
```

