# extractAndFormatValue


Extracts and formats a value from data using an expression with optional formatters
Supports JSONPath expressions starting with $ and applies formatting options



## Installation

```tsx
import { extractAndFormatValue } from 'uxp/components';
```

## Signature

```tsx
function extractAndFormatValue(expression: string, data: any, defaultValue: string): any
```

## Examples

```tsx
Extract nested property
```tsx
extractAndFormatValue("$.user.name", { user: { name: "John" } }, "") // Returns: "John"
```

```tsx
Apply number formatting
```tsx
extractAndFormatValue("$.price|number|2", { price: 19.999 }, "0") // Returns: 19.99
```

