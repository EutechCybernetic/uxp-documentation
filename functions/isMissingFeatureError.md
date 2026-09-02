# isMissingFeatureError


Whether an error says the *server* does not have the thing, as opposed to the call having failed.

Accepts whatever the execute layer hands back: the raw `error` (a string from the server, an Error
from the transport), or the whole `ExecutionResult`. Anything that is not a non-empty server string
— a network blip, a 401, a genuine failure inside a service that does exist — is not a verdict about
this deployment and returns false.

Note a batch item runs without per-service role validation, so a permission denial never reaches
here: this answers "is it installed", never "may I use it".


## Installation

```tsx
import { isMissingFeatureError } from 'uxp/components';
```

## Signature

```tsx
function isMissingFeatureError(error: any): boolean
```

