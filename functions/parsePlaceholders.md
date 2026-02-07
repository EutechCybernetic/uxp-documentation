# parsePlaceholders


Parses placeholder expressions in a string value and replaces them with actual data
Returns the original type if single expression, otherwise returns formatted string



## Installation

```tsx
import { parsePlaceholders } from 'uxp/components';
```

## Signature

```tsx
function parsePlaceholders(value: string, data: any): any
```

## Examples

```tsx
Single expression returns typed value
```tsx
parsePlaceholders("{user.age}", { user: { age: 25 } }) // Returns: 25 (number)
```

```tsx
Mixed content returns formatted string
```tsx
parsePlaceholders("Hello {user.name}!", { user: { name: "John" } }) // Returns: "Hello John!"
```

