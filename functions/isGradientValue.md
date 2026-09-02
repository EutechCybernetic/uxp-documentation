# isGradientValue

A value is a CSS gradient (`linear-gradient(...)`, `radial-gradient(...)`,
`conic-gradient(...)`). TinyColor cannot parse these, so — like expressions —
they bypass it and are stored/emitted verbatim.



## Installation

```tsx
import { isGradientValue } from 'uxp/components';
```

## Signature

```tsx
function isGradientValue(v: string): boolean
```

