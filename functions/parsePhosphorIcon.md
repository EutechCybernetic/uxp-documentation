# parsePhosphorIcon


Parse PHIconProp to extract weight and icon name
Used internally by PHIconWrapper


## Installation

```tsx
import { parsePhosphorIcon } from 'uxp/components';
```

## Signature

```tsx
function parsePhosphorIcon(icon: PHIconProp): { weight: PHIconWeight; iconName: string }
```

## Examples

```tsx
parseIconProp(['phb', 'House']) // { weight: 'bold', iconName: 'house' }
```

```tsx
parseIconProp('ArrowRight') // { weight: 'regular', iconName: 'arrow-right' }
```

## Related Types

- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)

