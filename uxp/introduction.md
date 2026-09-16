# Building UIs and widgets with uxp

uxp is the React component library and runtime that iviva's frontend is built on. You use it to build the
screens your users work in: application pages, dashboards and the widgets placed on them.

## What changed in v5

In v4, uxp was one layer inside a larger frontend. The application screens were XML views rendered by the
server, and uxp supplied the dashboard: a grid of widgets a user could add, drag and resize, plus a few
supporting surfaces.

In v5, uxp is the whole frontend. One shell is served for every route under `/view/` and `/dashboard/`, and
everything inside it comes from React: the header and navigation, client-side routing, the application pages,
the dashboards, and the widgets on those dashboards. An app no longer ships views in two technologies; it
ships one bundle of registered components.

## Views or widgets

The single most useful rule when you start:

> When you build an iviva application (Location, User, System and the rest), register its screens as
> components in `ui` mode inside that app. Build widgets only for analytics and reporting content that
> belongs on a dashboard.

A `ui` component is a page: it owns a route, it can read route and query parameters, and the user reaches it
from a navigation link. That is what an application screen is, so that is what almost all of your components
will be.

A `widget` component is a card on a dashboard grid: a user places it, resizes it, and configures its props
per instance. That shape suits a chart, a KPI tile or a short ranked list. It suits a work order form badly.

The core apps follow this rule. Location, User and Asset ship zero widgets: every screen in them is a `ui`
component. The only widget set in core is System's page-view analytics, which is exactly the case the widget
model is for (a trend chart, KPI tiles, top-pages and top-users tables, a global filter card):
`SystemApps/System/5.0/Resources/views/src/index.tsx:675-700`.

Both modes are registered the same way, with [`registerComponent`](./components-and-modes.md), and one
component can declare both modes if it genuinely works as a page and as a card.

## Two ways to ship a component

| | Inside an app | As a standalone bundle |
|---|---|---|
| What it is | `<App>/5.0/Configuration.yml` plus `Resources/views`, built and deployed with the app | A separate project created with `lucy-xp init`, uploaded as a `.js` + `bundle.json` pair |
| Routes and navigation | Declared in `Configuration.yml`; links appear in the admin's navigation | None of its own; a widget is placed on a dashboard, a view is pointed at by a custom route |
| Build and deploy | `npm run build` in the app's `Resources/views`, then the app deploy steps | `npm run build`, then `lucy-xp upload` or UXP → Settings → Manage Bundles |
| Use it when | You are building or extending an iviva application: pages, navigation, an app's own dashboards | You are adding widgets or a single view to an existing account without touching an app |

Most product work is the first path. The second path exists for account-specific additions and for
distributing a widget set on its own.

## Where to go next

- [Getting started](./getting-started.md) sets up a standalone bundle project and its dev shell.
- [Components and modes](./components-and-modes.md) is the registration API: ids, modes, configurable props.
- [Building widgets](./widgets.md) and [Building UI views](./ui-views.md) cover the two component shapes.
- [What's new in v5](../v5/whats-new.md) and [Set up your environment](../v5/setup-environment.md) cover the
  app path: creating an app, `Configuration.yml`, building and deploying it.
- [Components](../components.md) is the generated reference for every component, with a live Storybook demo
  on each page.

## Prerequisites

uxp is built on [TypeScript](https://www.typescriptlang.org/docs/) and [React](https://react.dev), so you
need to be comfortable with both. You will need:

- Windows, macOS or Linux
- Node.js 20 or later

Visual Studio Code works well as an editor, and the [uxp-lint extension](./tooling.md) reports problems in
it as you type.
