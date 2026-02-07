# applyFormatters


Applies formatting transformations to a value based on formatter configuration
Uses FormatOptions to transform values (string, number, boolean, etc.)



## Installation

```tsx
import { applyFormatters } from 'uxp/components';
```

## Signature

```tsx
function applyFormatters(value: any, formatters: string[]): any
```

## Examples

```tsx
Format as number with decimals
```tsx
applyFormatters(19.999, ["number", "2"]) // Returns: 19.99
```

```tsx
No formatters applied
```tsx
applyFormatters("hello", []) // Returns: "hello"
```

