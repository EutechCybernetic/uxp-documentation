# Build & Performance

An app ships as one JavaScript bundle. These pages cover keeping it small, keeping the first render fast,
and getting the build onto an account.

| Page | What is in it |
|---|---|
| [Lazy Views & Skeletons](./lazy-views.md) | Load a view's chunk on demand with one helper, and show a skeleton while it arrives |
| [Bundle Optimization](./bundle-optimization.md) | Why bundle size matters, what to split, and the other levers worth pulling |
| [Build and Deploy](./build-deploy.md) | Building an app's views, deploying it, and how cache and versions behave |

## The short version

Lazy-load every routed view, keep heavy libraries out of the main chunk, and let the linter's bundle-size
rule tell you when something has crept back in. A page the user never opens should not be in the bundle
they download.

## Where to go next

- [Lint & Scoped CSS](./lint-and-scoped-css.md): the bundle-size rule and the rest of `uxp-lint`
- [Publishing](../uxp/publishing.md): the standalone bundle path, which deploys differently
- [Troubleshooting Guide](./troubleshooting.md): stale `dist/main.js` and the other build-time traps
