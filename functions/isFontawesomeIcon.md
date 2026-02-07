# isFontawesomeIcon


Check if icon is FontAwesome format (string or array)


## Installation

```tsx
import { isFontawesomeIcon } from 'uxp/components';
```

## Signature

```tsx
function isFontawesomeIcon(icon: any): boolean
```

## Examples

```tsx
isFontawesomeIcon('fas save') // true
```

```tsx
isFontawesomeIcon('fas:save') // true
```

```tsx
isFontawesomeIcon(['fas', 'save']) // true
```

```tsx
isFontawesomeIcon('phb house') // false
```

