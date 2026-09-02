# useTabInjection


Hook to register a tab injection for a given objectType, tied to the component lifecycle:
mount → injection appears; unmount → injection is removed.

This is the framework-level API and takes the fully merged tab (composite `bundleId/tabId`
id + all metadata). App code should normally use the `registerTabInjection` wrapper from the
app's own `uxp.ts` instead — it takes a partial id, merges the bundle.json `objectTabs`
entry, and generates the composite id (same pattern as `registerComponent`).



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
    });
    return null;
}
```

## Related Types

- [TabInjection](../types/TabInjection.md)
- [TabInjectionComponent](../types/TabInjectionComponent.md)

