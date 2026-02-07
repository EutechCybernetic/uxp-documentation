# getPhosphorIcon


Parse Phosphor icon string to PHIconProp array format


## Installation

```tsx
import { getPhosphorIcon } from 'uxp/components';
```

## Signature

```tsx
function getPhosphorIcon(icon: string): PHIconProp
```

## Examples

```tsx
getPhosphorIcon('phb house') // ['phb', 'house']
```

```tsx
getPhosphorIcon('phb:house') // ['phb', 'house']
```

```tsx
getPhosphorIcon('phr heart') // ['phr', 'heart']
```

## Related Types

- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)

