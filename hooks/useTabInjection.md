# useTabInjection


Hook to declare a tab injection for a given objectType.

Registration is tied to the component lifecycle: mount → injection appears;
unmount → injection is removed.

The `id` must be fully-qualified: `"bundleId/tabId"` (e.g. `"iviva-asset-app/location-assets"`).
The `objectType` is normalised to lowercase automatically.



## Installation

```tsx
import { useTabInjection } from 'uxp/components';
```

## Signature

```tsx
function useTabInjection(declaration: TabInjection): void
```

## Examples

```tsx
typescript
function AssetAppRoot() {
    useTabInjection({
        id: 'iviva-asset-app/location-assets',
        objectType: 'location',
        name: 'Assets',
        icon: 'fas boxes',
        components: [{ componentId: 'iviva-asset-app/asset-list', priority: 1 }],
        appRoles: ['assets.viewer']
    });
    return null;
}
```

## Related Types

- [TabInjection](../types/TabInjection.md)
- [TabInjectionComponent](../types/TabInjectionComponent.md)

