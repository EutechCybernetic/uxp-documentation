# hasPlaceholders


Checks if a string contains placeholder expressions that can be parsed



## Installation

```tsx
import { hasPlaceholders } from 'uxp/components';
```

## Signature

```tsx
function hasPlaceholders(value: string): boolean
```

## Examples

```tsx
String with placeholders
```tsx
hasPlaceholders("Hello {user.name}!") // Returns: true
```

```tsx
Plain string without placeholders
```tsx
hasPlaceholders("Hello world!") // Returns: false
```

