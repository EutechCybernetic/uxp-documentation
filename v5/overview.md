# Building iviva apps

An iviva app ships its screens as React components. One `Configuration.yml` declares the app's routes,
navigation links and pages; one `Resources/views` project builds the components those pages render. This
section covers that path end to end: setting the environment up, writing views, loading data, styling,
building and deploying, and migrating an app that still has v4 XML views.

If you are not working inside an app — you are adding widgets or a single view to an account as a
standalone bundle — start at [Building UIs and widgets with uxp](../uxp/introduction.md) instead. The
component API is the same; only the packaging and deployment differ.

| Section | What is in it |
|---|---|
| [What's New in V5](./whats-new.md) | The short version of everything that changed, for anyone who has built iviva apps before |
| [Getting started](./getting-started.md) | Set up the framework and an app, then build your first view and navigation link |
| [Core concepts](./core-concepts.md) | Architecture, `Configuration.yml`, navigation, the component registry and the component library |
| [Pages & Dashboards](./pages-and-dashboards.md) | The four ways to put a page in front of a user, and the surfaces you can extend |
| [Data & Services](./data-and-services.md) | Service configs and the hooks that run them, event synchronization, in-app notifications |
| [Styling & Localization](./styling-and-localization.md) | Theme variables, SCSS conventions, font-weight tokens, translations and scoped CSS |
| [Build & Performance](./build-and-performance.md) | Lazy views, bundle size and the build and deploy steps |
| [Migration & reference](./migration-and-reference.md) | The v4 to v5 migration guide, best practices and troubleshooting |

## Reading order

If you are new, read [What's New in V5](./whats-new.md), then work through
[Getting started](./getting-started.md) in order — it ends with a view rendering at a route you added.
[Core concepts](./core-concepts.md) is the reference you will come back to.

If you are migrating an existing app, read [What's New in V5](./whats-new.md) and then the
[V4 to V5 Migration Guide](./migrations.md), which walks a complete app through the process.
