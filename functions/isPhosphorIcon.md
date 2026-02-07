# isPhosphorIcon


Check if icon is Phosphor format (string or array)


## Installation

```tsx
import { isPhosphorIcon } from 'uxp/components';
```

## Signature

```tsx
function isPhosphorIcon(icon: any): boolean
```

## Examples

```tsx
isPhosphorIcon('phb house') // true
```

```tsx
isPhosphorIcon('phb:house') // true
```

```tsx
isPhosphorIcon(['phb', 'house']) // true
```

```tsx
isPhosphorIcon('fas save') // false
```

