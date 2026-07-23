# getDefaultGlobeLocations


Default globe marker locations (iviva offices). Used as the fallback when a
globe login background has no configured locations, and by admin UIs to seed
the editable list. Returns a fresh copy — safe to mutate.



## Installation

```tsx
import { getDefaultGlobeLocations } from 'uxp/components';
```

## Signature

```tsx
function getDefaultGlobeLocations(): GlobeLocation[]
```

## Examples

```tsx
const offices = getDefaultGlobeLocations();
console.log(offices[0]); // { name: "Singapore", lat: 1.3521, lng: 103.8198 }
```

