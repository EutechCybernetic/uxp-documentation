# loadScriptFileAsync


Loads a JavaScript file asynchronously using promises



## Installation

```tsx
import { loadScriptFileAsync } from 'uxp/components';
```

## Signature

```tsx
function loadScriptFileAsync(path: string, id?: string, replaceIfExist?: boolean): Promise<void>
```

## Examples

```tsx
try {
  await loadScriptFileAsync('/js/chart.js', 'chart-script');
  console.log('Script loaded successfully');
} catch (error) {
  console.error('Failed to load script');
}
```

