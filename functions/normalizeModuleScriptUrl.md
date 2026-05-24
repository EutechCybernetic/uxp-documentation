# normalizeModuleScriptUrl


Normalizes a module script URL to a relative path by stripping any leading origin
(e.g. "http://account:5001/api/UXP/module?id=X" → "/api/UXP/module?id=X").
Non-module URLs (e.g. S3 URLs) are returned unchanged.


## Installation

```tsx
import { normalizeModuleScriptUrl } from 'uxp/components';
```

## Signature

```tsx
function normalizeModuleScriptUrl(url: string): string
```

