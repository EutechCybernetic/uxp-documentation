# parseIcon


Parse any icon prop and determine its type and format
Returns formatted icon ready for the appropriate wrapper



## Installation

```tsx
import { parseIcon } from 'uxp/components';
```

## Signature

```tsx
function parseIcon(icon: any): ParsedIcon | null
```

## Examples

```tsx
parseIcon('fas save') // { type: 'fontawesome', formatted: ['fas', 'save'], original: 'fas save' }
```

```tsx
parseIcon(['phb', 'house']) // { type: 'phosphor', formatted: ['phb', 'house'], original: ['phb', 'house'] }
```

```tsx
parseIcon('https://example.com/icon.svg') // { type: 'image', formatted: 'https://...', original: 'https://...' }
```

