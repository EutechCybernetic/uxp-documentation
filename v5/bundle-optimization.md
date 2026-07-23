# Bundle Optimization

> **Applies to:** v5 app projects — the `5.0` folder inside an iviva app
> (e.g. `ivivaweb/SystemApps/System/5.0`).

Every v5 app is loaded into the UXP shell as a single bundle. The smaller that bundle,
the faster the shell starts and the faster your first view paints. The two levers that
matter most are **code-splitting** (don't ship code the user hasn't navigated to yet)
and **lazy loading** (fetch a view's chunk on demand). The `uxp-lint optimise` command
applies both for you.

---

## Why bundle size matters

Everything imported at the top of `src/index.tsx` — every view, every heavy dependency —
lands in the main chunk and is downloaded before the app can render anything. A typical
app registers many views but a user opens one at a time. Loading all of them upfront is
wasted bytes on the critical path.

Real result: lazy-loading views + async chunk-splitting cut one app's **initial bundle by
~71%**.

---

## Lazy-load your views

Register each view through `lazyView()` (from `uxp/components`) instead of importing it
statically. The view's code is split into its own chunk and fetched only when the route
is opened; a skeleton shows while it loads.

**Before** — every view is in the main chunk:

```tsx
import { HomeView } from './views/home/HomeView';
import { ReportsView } from './views/reports/ReportsView';

registerUI({ id: 'home-view', component: HomeView });
registerUI({ id: 'reports-view', component: ReportsView });
```

**After** — each view is its own lazily-loaded chunk:

```tsx
import { lazyView } from 'uxp/components';

const HomeView = lazyView(() => import('./views/home/HomeView'), 'HomeView');
const ReportsView = lazyView(() => import('./views/reports/ReportsView'), 'ReportsView');

registerUI({ id: 'home-view', component: HomeView });
registerUI({ id: 'reports-view', component: ReportsView });
```

See [Lazy Views & Skeletons](./lazy-views.md) for the full `lazyView` reference —
presets, custom fallbacks, and building your own skeleton.

---

## Other levers

- **Async chunk-splitting only.** `splitChunks: { chunks: 'async' }`. Never `'all'` /
  `'initial'` and never `runtimeChunk` — the shell loads only your entry script, so
  initial-split vendor/runtime chunks never load and the app breaks at startup.
- **Externalize the shared runtime.** `react`, `react-dom` (and `uxp/components`) are
  provided by the shell — keep them in webpack `externals` so they're never bundled.
- **Tree-shaking on, source maps off in production.** `usedExports` + a conditional
  `devtool` guarded by `argv.mode`.
- **Import narrowly.** Pull only what you use (`import { debounce } from 'lodash-es'`),
  never a whole non-tree-shakeable package.

---

## Let the linter do it

Don't hand-apply the above. Run:

```bash
uxp-lint optimise            # apply all deterministic build optimizations
uxp-lint optimise --dry-run  # preview the changes first
```

It rewrites `webpack.config.js`, `tsconfig.json`, `package.json`, and converts every
statically-imported (or legacy `lazy()` + `Suspense`) view in `src/index.tsx` to
`lazyView()`. Afterwards, inspect what's left with:

```bash
npm run analyze
```

an interactive treemap of every module's contribution to each chunk — useful for
spotting a large dependency that should be externalized or lazy-loaded.

---

## Next Steps

- [Lazy Views & Skeletons](./lazy-views.md) - The full `lazyView` helper reference
- [Lint & Scoped CSS](./lint-and-scoped-css.md) - The uxp-lint toolchain
- [Building & Deployment](./build-deploy.md) - Producing the production bundle
