# Lazy Views & Skeletons

Load your views lazily with a single helper, and show a **skeleton** while the chunk
downloads instead of a blank screen or a spinner.

---

## Why

Every app used to hand-write the same `React.lazy` + `<Suspense>` block for each view,
usually with `fallback={null}` (blank flash) or a spinner. `lazyView` replaces that
boilerplate with one line and a named skeleton fallback, so loading states look
consistent across all apps.

`lazyView` is exported from `uxp/components` — no new dependency, no config change.

---

## Before / After

**Before**

```tsx
import { lazy, Suspense, ComponentProps } from 'react';

const LazyLayoutView = lazy(() =>
    import(/* webpackChunkName: "layout-view" */ './views/layout/LayoutView')
        .then((m) => ({ default: m.LayoutView }))
);
const LayoutView = (props: ComponentProps<typeof LazyLayoutView>) => (
    <Suspense fallback={null}>
        <LazyLayoutView {...props} />
    </Suspense>
);
```

**After**

```tsx
import { lazyView } from 'uxp/components';

const LayoutView = lazyView(
    () => import(/* webpackChunkName: "layout-view" */ './views/layout/LayoutView'),
    'LayoutView',
    'view'
);
```

- **Named export** → pass the export name (`'LayoutView'`).
- **Default export** → pass `'default'`.
- Delete any local `ViewLoading` / spinner fallback helpers — the preset covers it.
- Register the returned component with `registerUI` exactly as before.

---

## Fallback presets

The third argument is **optional** and defaults to `'view'`.

| Preset           | Shows                                        | Use for                              |
|------------------|----------------------------------------------|--------------------------------------|
| `'view'`         | Generic content skeleton (default)           | Any page — the safe default          |
| `'list'`         | Same as `view` (in v5 the generic view is a list) | List / search pages             |
| `'dashboard'`    | Card-grid skeleton                           | Dashboard-style pages                |
| `'detailspanel'` | List column + details panel skeleton         | Master-detail pages                  |
| `'none'`         | No fallback (`null`)                          | Something opened on demand (a modal) |

```tsx
const PortfolioView = lazyView(() => import('./views/portfolio/PortfolioView'), 'PortfolioView', 'list');
const HomeDashboard = lazyView(() => import('./views/home/HomeDashboard'), 'HomeDashboard', 'dashboard');

// No third arg → defaults to the 'view' skeleton:
const SettingsView = lazyView(() => import('./views/settings/SettingsView'), 'SettingsView');
```

---

## Custom fallback

When none of the presets fit — e.g. Location's **layout-config page** — pass your own
component (any `ReactNode`) as the third argument instead of a preset string. If you
pass nothing (or an unknown preset), `lazyView` falls back to the default `view` loader.

```tsx
import { lazyView } from 'uxp/components';
import { LayoutConfigLoader } from './views/layout/LayoutConfigLoader';

const LayoutConfig = lazyView(
    () => import('./views/layout/LayoutConfig'),
    'LayoutConfig',
    <LayoutConfigLoader />   // custom fallback screen
);
```

---

## Building a loader with `SkeletonLoader`

To build a custom fallback that matches your page, compose the `SkeletonLoader`
primitive (also exported from `uxp/components`). It renders a single shimmering box:

| Prop              | Type                  | Default  | Notes                                  |
|-------------------|-----------------------|----------|----------------------------------------|
| `width`           | `string` (CSS unit)   | `'100%'` | e.g. `'14rem'`, `'100%'`               |
| `height`          | `string` (CSS unit)   | `'1rem'` | e.g. `'3rem'`                          |
| `additionalStyle` | `React.CSSProperties` | —        | e.g. `{ borderRadius: '0.5rem' }`      |
| `className`       | `string`              | —        | Add your own layout/size class         |

Arrange several of them to mirror your page. Keep layout in a scoped/SCSS class rather
than inline styles where you can:

```tsx
import { SkeletonLoader } from 'uxp/components';

export const LayoutConfigLoader = () => (
    <div className="layoutconfig_loader">
        <SkeletonLoader width="16rem" height="1.5rem" additionalStyle={{ borderRadius: '0.4rem' }} />
        <div className="layoutconfig_loader__body">
            <SkeletonLoader width="30%" height="20rem" additionalStyle={{ borderRadius: '0.5rem' }} />
            <SkeletonLoader width="68%" height="20rem" additionalStyle={{ borderRadius: '0.5rem' }} />
        </div>
    </div>
);
```

**Prefer classes over inline styles.** Every `SkeletonLoader` (and any `<div>` you give
the shared shimmer class `uxpcore_skeleton_loader`) already animates — so you can build
a fully class-driven loader and keep sizing in SCSS:

```tsx
const cx = (...c) => c.filter(Boolean).join(' ');

export const LayoutConfigLoader = () => (
    <div className="layoutconfig_loader">
        <div className={cx('uxpcore_skeleton_loader', 'layoutconfig_loader__title')} />
        <div className={cx('uxpcore_skeleton_loader', 'layoutconfig_loader__canvas')} />
    </div>
);
```

For reference implementations, see the framework's own `ViewSkeleton` /
`DashboardSkeleton` (in `components/widget/loaders`) — they are just arrangements of the
shimmer class.

---

## Notes

- Requires the latest `uxp` build and regenerated `uxp.d.ts` in your app.
- Keep `react` / `react-dom` as webpack `externals` (unchanged) — Suspense works across
  the app↔framework boundary only because React is a single shared instance on the page.
- Object-search lists already show a list skeleton on initial load automatically — no
  change needed on your side.

---

## Next Steps

- [Bundle Optimization](./bundle-optimization.md) - Reduce bundle size with code-splitting; auto-apply with `uxp-lint optimise`
