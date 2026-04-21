# getInputSizeStyles

Generate inline styles for input size control
Respects priority: style > fullWidth > width > min/maxWidth > defaults

All number values are converted to rem units (base: 12px)




## Installation

```tsx
import { getInputSizeStyles } from 'uxp/components';
```

## Signature

```tsx
function getInputSizeStyles(props: InputSizeProps & { style?: React.CSSProperties }): React.CSSProperties
```

## Examples

```tsx
tsx
const sizeStyles = getInputSizeStyles({ minWidth: 150, maxWidth: 500, style: { color: 'red' } });
<div style={sizeStyles}>...</div>
// Result: { minWidth: '12.5rem', maxWidth: '41.667rem', color: 'red' }
```

