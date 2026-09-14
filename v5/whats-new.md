# What's New in V5

If you have built iviva apps before, start here. This page is the short version of everything that
changed between v4 and v5, with a link to the page that covers each change in full.

---

## A note on names

Lowercase **uxp** is the React frontend framework. Uppercase **UXP** is the iviva app of that name, an
ordinary app like Lucy, System or Location. In v4 the two were nearly the same thing. In v5 they are not,
and that difference is the whole story below.

---

## Views are React now

**In v4, application pages were XML.** A page lived at `Apps/<app>/<view>` and was served from an XML file
in the app's `Views/` folder, rendered by the form engine. Those files are still there, the route is still
registered, and the platform still ships hundreds of them.

**uxp was a dashboarding layer bolted on top of that.** It gave you two things, both reached through the
same XML machinery:

| v4 | What it actually was |
|---|---|
| `Apps/UXP/portal/<id>` | A **standard dashboard**, the view file `UXP/5.0/Views/portal.xml`, whose layout called `renderDashboardView()` |
| `Apps/UXP/screen/<id>` | A **custom React UI**, `screen.xml`, whose layout called `renderUIView()` |

**The major change in v5: uxp became the entire frontend.** Not a layer inside a page any more, but the
framework that renders every page. UXP is demoted to just another app, with its own `baseRoute: /uxp` and
two navigation links.

| v4 | v5 |
|---|---|
| XML views at `Apps/<app>/<view>` | **Coded pages**, a React component registered with `registerComponent`. This is what application pages are now. |
| Fixed URL shape, fixed navigation | **`/view/<rest>`, and navigation is fully configurable** by an admin. |
| Standard dashboards via `Apps/UXP/portal/<id>` | **Still supported, same `UXPPortals` record and saved layouts**, with their own entry point `/dashboard/<id>`. |
| Custom React UIs via `Apps/UXP/screen/<id>` | Now simply a coded page. There is no separate hosting shell any more. |
| (nothing equivalent) | **Embedded dashboards**, a widget grid without its own navigation, living at a `/view/...` URL inside your app. |

The ceiling is gone too: a page is a React component, so anything you can build in React you can ship as a
page.

---

## One shell, resolved on the client

There are two entry points, `/view/<rest>` and `/dashboard/<id>`, and both are served by the *same* server
action. It returns one HTML shell with the route table, navigation, roles and script map injected into it.
The server makes no decision about which page you asked for. uxp matches the URL against that route table
in the browser and renders one of three things: a standard dashboard, an embedded dashboard, or a
configured page.

That is why navigation is so configurable, which is the next change.

---

## Navigation belongs to the admin

In v4 the sidebar was fixed by the app. In v5 an admin edits a **master link tree** in System, points each
link at whatever should fill it, and optionally splits the result into **navigation profiles** for
different user groups. **Custom routes** add URLs that no app shipped. Your `Configuration.yml`
`navigationLinks` seed that tree on first sync; after that, the database is the source of truth.

Read [How navigation works](../user-guide/navigation/overview.md) in the User Guide for the admin side of
this, and [Navigation Configuration](./navigation.md) for the YAML your app ships.

---

## Four ways to put a page in front of a user

| You want | Use | Who builds it |
|---|---|---|
| An application page: a form, a list, a workflow | **Coded page** | Developer |
| A grid of widgets, composed by an admin, on its own URL | **Standard dashboard** | Admin, no code |
| The same, but as a page inside your app's navigation | **Embedded-dashboard nav link** | Admin, no code |
| A page you control that *contains* a dashboard an admin composes | **Coded page hosting `EmbeddedDashboard`** | Developer plus admin |

The last one is the shape to reach for when a page is "a set of widgets plus logic I own". See
[Building Pages & Dashboards](./building-pages.md) for how to pick, and
[Dashboard Page Walkthrough](./dashboard-page-walkthrough.md) for a worked example.

---

## One registration call: `registerComponent`

`registerUI()` and `registerWidget()` each wrote into their own global registry. V5 has a single registry
and a single entry point, with `modes` saying how the component may be used:

```typescript
import { registerComponent } from './uxp';

registerComponent({
    id: 'portfolio-view',
    component: PortfolioView,
    modes: ['ui'],
});
```

Modes are `'widget'`, `'ui'`, `'background'` and `'lucy-block'`. `registerUI` and `registerWidget` still
work as thin adapters, so existing code keeps running, but write anything new with `registerComponent`.
The payoff is that every component type can now declare `configs.props`, not just widgets. Full API and
migration steps: [Unified Component Registry](./unified-components.md).

> A `components[]` entry in `bundle.json` with no `modes` defaults to `['widget']`. A page registered that
> way shows up in the dashboard widget drawer instead of rendering as a page, so always set `modes`.

---

## Application views are `ui`, widgets are for analytics

A useful rule when you are deciding what to register:

- **Application views** (Location, User, System and so on) are components in `ui` mode inside an app. They
  are pages a user navigates to.
- **Widgets** are for analytics and reporting on dashboards. The only widget set in core is System's
  page-view analytics (`page-view-kpis`, `page-views-trend`, `page-views-top-pages` and friends), which is
  exactly the kind of thing a widget is for: a small, configurable, composable chart an admin drops onto a
  grid.

If you are migrating a v4 XML view, it becomes a `ui` component, not a widget.

---

## Your app on disk

An app is a folder, `<App>/5.0/`, holding two things that matter to the frontend:

```
<App>/5.0/
├── Configuration.yml          # appId, bundleId, baseRoute, navigationLinks, otherRoutes, pages, scripts
└── Resources/
    └── views/                 # your React app
        ├── src/index.tsx      # registerComponent calls
        ├── bundle.json        # component metadata the server indexes
        └── dist/main.js       # build output, referenced from Configuration.yml
```

The loop is: edit `src/`, run `npm run build` (or `npm run watch`) in `Resources/views`, reload. Config and
navigation changes need a cache reset as well, see [Building & Deployment](./build-deploy.md).

Start here:

- [Setup Development Environment](./setup-environment.md)
- [Create Your First View](./first-view.md)
- [Building & Deployment](./build-deploy.md)

---

## What carried over unchanged

| Carried over | Detail |
|---|---|
| **Standard dashboards and saved layouts** | Same `UXPPortals` table, same records, same `UXPPortalUserPrefs` layouts, including the v4 `{ installed, deleted }` blob. A dashboard created in v4 opens at `/dashboard/<id>` with no conversion step, and its widgets are re-matched to the registry by id. |
| **Standalone widget bundles** | A bundle built with `lucy-xp` and uploaded outside any app is still stored in `UXPModules` and served to every page. See [Publishing](../uxp/publishing.md). |
| **Services and models** | Nothing about the backend changed. Your Lucy services, models and scripts are untouched by the frontend move. |

---

## What is gone

| Removed | What to do instead |
|---|---|
| `registerLink()` | Define links in `Configuration.yml` `navigationLinks`, or let an admin add them. The call is a warn-only no-op. |
| `registerMenuItem()` | No equivalent. The call is a warn-only no-op. |
| `sidebarLinks[]` in `bundle.json` | Same as `registerLink`: navigation comes from configuration. The array is parsed and ignored. |
| `Apps/UXP/screen/<id>` | A coded page at a `/view/...` route of your own. |
| `Apps/UXP/page/<name>` | `/view/widget/:name`, the standalone widget page. |

---

## Reading order for a migration

Work through these in order:

1. [Migration Setup](./migration-setup.md): create the `Resources/views` structure and `Configuration.yml`.
2. [Migration Guide](./migrations.md): the XML control to React component mapping, one control at a time.
3. [Troubleshooting Guide](./troubleshooting.md): the traps that cost the most time, with symptoms.
