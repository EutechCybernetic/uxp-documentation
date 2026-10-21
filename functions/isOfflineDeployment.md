# isOfflineDeployment


True when the account runs as an air-gapped/offline deployment. Reads the
server-injected `is_offline` hidden input on each call. Internet-only
features must check this.



## Installation

```tsx
import { isOfflineDeployment } from 'uxp/components';
```

## Signature

```tsx
function isOfflineDeployment(): boolean
```

## Examples

```tsx
if (isOfflineDeployment()) return null;
```

