# useIsMobileLayout

True when the screen uses the mobile layout (phones, portrait tablets, phones held sideways).
Updates when the screen size or orientation changes.



## Installation

```tsx
import { useIsMobileLayout } from 'uxp/components';
```

## Signature

```tsx
function useIsMobileLayout(): boolean
```

## Examples

```tsx
const isMobile = useIsMobileLayout();
return isMobile ? <CompactList /> : <FullTable />;
```

