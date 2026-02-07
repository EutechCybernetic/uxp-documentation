# useIsPHIconReady



Hook to check if Phosphor Icons web components are loaded and ready

This checks if the @phosphor-icons/webcomponents library has been loaded
by verifying if custom elements are defined.



## Installation

```tsx
import { useIsPHIconReady } from 'uxp/components';
```

## Signature

```tsx
function useIsPHIconReady(iconName?: string): boolean
```

## Examples

```tsx
tsx
const ready = useIsPHIconReady('house');
if (!ready) return <SkeletonLoader />;
return <ph-house weight="bold" />;
```

