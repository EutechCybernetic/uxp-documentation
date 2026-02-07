# loadScriptFile


Loads a JavaScript file dynamically with optional callback



## Installation

```tsx
import { loadScriptFile } from 'uxp/components';
```

## Signature

```tsx
function loadScriptFile(path: string, callback?: ScriptCallback, id?: string, replaceIfExist?: boolean): void
```

## Examples

```tsx
loadScriptFile('/js/chart.js', () => {
  console.log('Chart library loaded');
}, 'chart-script');
```

## Related Types

- [ScriptCallback](../types/ScriptCallback.md)

