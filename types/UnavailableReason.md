# undefined

Why a page is not available here: the name of the page flag that is not met.
The page shows a "not available" notice instead of its content.

- `requiresInternet`: needs an internet connection (turned off on offline deployments).
- `desktopOnly`: reserved, not used yet.


## Definition

```tsx
export type UnavailableReason = 'requiresInternet' | 'desktopOnly';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

