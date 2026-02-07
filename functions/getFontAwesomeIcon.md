# getFontAwesomeIcon


Convert FontAwesome string to IconProp array format


## Installation

```tsx
import { getFontAwesomeIcon } from 'uxp/components';
```

## Signature

```tsx
function getFontAwesomeIcon(icon: string): IconProp
```

## Examples

```tsx
getFontAwesomeIcon('fas save') // ['fas', 'save']
```

```tsx
getFontAwesomeIcon('fas:save') // ['fas', 'save']
```

