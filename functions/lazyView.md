# lazyView


Lazy-load a named export of a module, wrapped in Suspense with a preset (or
custom) skeleton fallback. Replaces the hand-rolled `React.lazy` + `<Suspense>`
block each app copy-pastes per view.



## Installation

```tsx
import { lazyView } from 'uxp/components';
```

## Signature

```tsx
function lazyView(load: () => Promise<any>, exportName: string, fallback?: FallbackKind | ReactNode): ForwardRefExoticComponent<PropsWithoutRef<P> & RefAttributes<any>>
```

## Examples

```tsx
const LayoutView = lazyView(() => import('./views/layout/LayoutView'), 'LayoutView', 'dashboard');
  // default export:
  const Uploader = lazyView(() => import('./forms/Uploader'), 'default', 'none');

The `load` closure is authored in the app bundle, so webpack code-splits it out
of the app; this helper and its skeletons live in the framework's main bundle.
```

