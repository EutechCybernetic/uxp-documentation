# UXP v5 Documentation Index

All guides for building widgets, pages and dashboards in the Lucy UXP v5 framework.

---

## Getting Started

| Doc | Description |
|---|---|
| [Setup Environment](./setup-environment.md) | Install dependencies, configure the dev environment, and run the build |
| [Migration Setup](./migration-setup.md) | Migrate an existing v4 widget or view to the v5 framework |
| [First View](./first-view.md) | Create and register your first widget view |
| [First Navigation](./first-navigation.md) | Add sidebar navigation links for your views |

---

## Core Concepts

| Doc | Description |
|---|---|
| [Architecture](./architecture.md) | How the v5 framework is structured — context, routing, rendering pipeline |
| [Configuration Reference](./configuration-reference.md) | Full reference for route, page, and navigation configuration objects |
| [Navigation Configuration](./navigation.md) | Link types, URL generation, permissions, and DB/YML sync |
| [Unified Component Registry](./unified-components.md) | `registerComponent` — one registry for widgets, pages and background surfaces |
| [Core Components](./core-components.md) | Reference for all built-in UXP UI components and hooks |

---

## Pages & Dashboards

| Doc | Description |
|---|---|
| [Building Pages & Dashboards](./building-pages.md) | The four ways to build a page, and how to pick between them |
| [Embedded Dashboard](./embedded-dashboard.md) | Embed a configurable widget dashboard inside a view |
| [Dashboard Page Walkthrough](./dashboard-page-walkthrough.md) | A complete analytics page: widgets, drill-downs, filters, shipped layouts |
| [Pluggable Views](./pluggable-views.md) | Register views that other modules can embed or extend |
| [Injected Tabs](./injected-tabs.md) | Add tabs to object detail pages from your widget module |
| [External Components](./external-components.md) | Use components registered by other installed modules |

---

## Data & Services

| Doc | Description |
|---|---|
| [Data Fetching](./data-fetching.md) | Call Lucy services and actions; hook-based state management |
| [Events & Synchronization](./events.md) | EventBus (in-browser) and SignalR (server push) for real-time sync |
| [In-App Notifications](./notifications.md) | Publish and resolve notifications shown in the notification center bell |

---

## UI & Styling

| Doc | Description |
|---|---|
| [Styling](./styling.md) | SCSS conventions, theme variables, and BEM naming |
| [Font Weights](./font-weights.md) | Theme font-weight tokens and when to use each |
| [Media Picker](./media-picker.md) | Pick images, icons and documents — library, gallery, upload, URL |
| [Localization](./localization.md) | Multi-language support and RTL/LTR text direction |
| [Lint & Scoped CSS](./lint-and-scoped-css.md) | ESLint, CSS scoping, and style isolation for widget bundles |

---

## Build & Performance

| Doc | Description |
|---|---|
| [Lazy Views & Skeletons](./lazy-views.md) | Load views lazily and show a skeleton while they arrive |
| [Bundle Optimization](./bundle-optimization.md) | Keep the app bundle small and split what you can |
| [Build & Deploy](./build-deploy.md) | Production build, packaging, and deployment steps |

---

## Reference & Troubleshooting

| Doc | Description |
|---|---|
| [Best Practices](./best-practices.md) | Patterns and conventions to follow when building with UXP v5 |
| [V4 to V5 Migration](./migrations.md) | Reference for specific v4 → v5 API and pattern changes |
| [Troubleshooting](./troubleshooting.md) | Common errors, debugging tips, and known limitations |
