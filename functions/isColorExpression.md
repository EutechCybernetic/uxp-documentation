# isColorExpression

A value is a theme/data expression (e.g. `$.theme.accentColor` or the
PillInput-serialised `{$.theme.accentColor}`) rather than a literal colour.
Such values must never reach TinyColor. Mirrors the v4 detection regexes.



## Installation

```tsx
import { isColorExpression } from 'uxp/components';
```

## Signature

```tsx
function isColorExpression(v: string): boolean
```

