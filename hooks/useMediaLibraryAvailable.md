# useMediaLibraryAvailable


`null` until the probe resolves. Probes only while `active`, so a picker whose
library source is switched off never asks.


## Installation

```tsx
import { useMediaLibraryAvailable } from 'uxp/components';
```

## Signature

```tsx
function useMediaLibraryAvailable(active: boolean): boolean | null
```

