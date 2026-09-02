# Building Pages & Dashboards

Four ways to put a page in front of a user, and how to pick between them.

---

## Coming from v4

> **A note on names.** Lowercase **uxp** is the React frontend framework. Uppercase **UXP** is the iviva
> app of that name — an ordinary app like Lucy, System or Location. In v4 the two were nearly the same
> thing; in v5 they are not, and the difference is the whole story below.

**In v4, application pages were XML.** A page lived at `Apps/<app>/<view>` and was served from an XML
file in the app's `Views/` folder, rendered by the form engine. Those files are still there — the route
is still registered, and the platform still ships hundreds of them.

**uxp was a dashboarding layer bolted on top of that.** It gave you two things, both reached through the
same XML machinery:

| v4 | What it actually was |
|---|---|
| `Apps/UXP/portal/<id>` | A **standard dashboard** — the view file `UXP/5.0/Views/portal.xml`, whose layout called `renderDashboardView()` |
| `Apps/UXP/screen/<id>` | A **custom React UI** — `screen.xml`, whose layout called `renderUIView()` |

**The major change in v5: uxp became the entire frontend.** Not a layer inside a page any more — the
framework that renders every page. The server now serves a single shell for every URL and lets uxp decide
what to draw; UXP is demoted to just another app, with its own `baseRoute: /uxp` and two navigation links.

What that buys you, and what carried over:

| v4 | v5 |
|---|---|
| XML views at `Apps/<app>/<view>` | **Coded pages** — a React component registered with `registerComponent`. This is what application pages are now. |
| Fixed URL shape, fixed navigation | **`/view/<rest>`, and navigation is 100% configurable.** An admin creates links and points each one at whatever should fill it — a page, a widget, an embedded dashboard, a standard dashboard. |
| Standard dashboards via `Apps/UXP/portal/<id>` | **Still supported, same `UXPPortals` record and saved layouts** — with their own entry point, `/dashboard/<id>`. A v4 layout blob loads as-is. |
| Custom React UIs via `Apps/UXP/screen/<id>` | Now simply a coded page — there is no separate hosting shell any more. |
| — | **Embedded dashboards** — new. A standard dashboard *without its own navigation*, living at a `/view/...` URL inside your app. |

The ceiling is gone too: a page is a React component, so anything you can build in React you can ship as
a page.

### One shell, resolved on the client

Worth knowing, because it explains why navigation is so configurable. Both `/view/...` and
`/dashboard/...` are served by the *same* server action, which returns one HTML shell with the route
table, navigation, roles and script map injected into it. The server makes no decision about which page
you asked for — uxp matches the URL against that route table in the browser and renders one of three
things: a standard dashboard, an embedded dashboard, or a configured page.

---

## The four routes

| You want | Use | Who builds it | Where the layout lives |
|---|---|---|---|
| An application page — a form, a list, a workflow | **Coded page** | Developer | In your code |
| A grid of widgets, composed by an admin, on its own URL | **Standard dashboard** | Admin, no code | `UXPPortals` + `UXPPortalUserPrefs` |
| The same, but as a page inside your app's navigation | **Embedded-dashboard nav link** | Admin, no code | Per link path, in the embedded-dashboard table |
| A page you control that *contains* a dashboard an admin composes | **Coded page hosting `EmbeddedDashboard`** | Developer + admin | Shipped default in your code, overridden per account |

The last one is the recommended shape for anything analytical or composable — you own the shell, the URL params and the data, while an admin still arranges the widgets. [Page Views](./dashboard-page-walkthrough.md) is a complete worked example.

---

## 1. A coded page

Three things: a component, a registration, a route.

**Write the component.** It receives `uxpContext` plus any configured and URL props (see [What a page receives](#what-a-page-receives)).

```typescript
// src/views/portfolio/PortfolioView.tsx
import { FunctionComponent, memo } from 'react';
import { IContextProvider } from 'uxp/components';

interface PortfolioViewProps {
    uxpContext?: IContextProvider;
}

const PortfolioViewBase: FunctionComponent<PortfolioViewProps> = () => {
    return <div className="portfolio-view">…</div>;
};

export const PortfolioView = memo(PortfolioViewBase);
```

**Register it** in your app's `index.tsx`. `registerComponent` is the unified registry — one call for a page, a widget or a background surface, distinguished by `modes`:

```typescript
// src/index.tsx
import { registerComponent } from './uxp';
import { PortfolioView } from './views/portfolio/PortfolioView';

registerComponent({
    id: 'portfolio-view',
    component: PortfolioView,
    modes: ['ui'],
});
```

**Declare it in `bundle.json`** — the id must match the one you registered, or the component loads without its metadata and logs an error:

```json
{
    "components": [
        {
            "id": "portfolio-view",
            "name": "Portfolio",
            "description": "Portfolio overview",
            "modes": ["ui"],
            "appRoles": ["MyApp:canmanage"]
        }
    ]
}
```

Name, description, icon, tags and permissions live in `bundle.json` — the server indexes them at upload
time without executing your code, and they **win** over the same field passed at the call site (the same
precedence `registerUI` and `registerWidget` have always had). The React reference, `configs` and
`defaultProps` can only live in the call.

> `registerUI` and `registerWidget` still work — they are adapters that call `registerComponent` for you. Prefer `registerComponent` for anything new; see [Unified Component Registry](./unified-components.md) for the full API and how to migrate an existing app.

**Route it** in `Configuration.yml`. A navigation link gives you a sidebar entry and a URL together:

```yaml
appId: MyApp
baseRoute: /myapp

navigationLinks:
  - label: Portfolio
    icon: fas briefcase
    link: /portfolios              # → /view/myapp/portfolios
    pageId: ui/portfolio-view      # → <bundleId>/portfolio-view
    appRoles: ["MyApp:canmanage"]
```

For a URL with no sidebar entry — a detail page, a redirect target — use `otherRoutes:` instead:

```yaml
otherRoutes:
  "/portfolios/:id":
    pageId: "ui/portfolio-detail-view"
```

`pageId` accepts `ui/<id>`, `widget/<id>` or a fully qualified `<bundleId>/<id>`; all normalise to the same component. Full field reference: [Navigation Configuration](./navigation.md) and [Configuration Reference](./configuration-reference.md).

---

## 2. A standard dashboard

No code. An admin goes to **UXP → Dashboards** (`/view/uxp/dashboards`), creates a dashboard with a **Dashboard ID** — that id is the URL:

```
/dashboard/<id>            the dashboard
/dashboard/<id>/<subId>    a named sub-dashboard of it
```

The record is a row in `UXPPortals`; layouts live in `UXPPortalUserPrefs`, saved per user with a shared default. Everything a v4 dashboard stored still loads: the old `{ installed, deleted }` blob is read directly, and widgets are re-matched to the registry by id.

Link to one from your app like any other page:

```yaml
navigationLinks:
  - label: Energy
    icon: fas bolt
    link: /dashboard/energy      # absolute — baseRoute is ignored for dashboards
```

**A standard dashboard brings its own navigation.** The portal record carries its own set of links, and
while you are on `/dashboard/<id>` those take over the **top** navigation — the dashboard's title becomes
the parent and its sub-dashboards become the entries beside it. Your app's sidebar stays as it is. That
is the v4 sidebar, moved to the header.

---

## 3. An embedded-dashboard navigation link

Also no code — this is how an admin turns a URL in your app into a dashboard they compose themselves.

In **System → Navigation Links**, add a link with **Type = Embedded Dashboard** and a `/view/...` path. The link stores `metadata.embeddedDashboard.link` and leaves `PageID` empty; the framework renders an `EmbeddedDashboard` for that path, already configurable.

Widgets on it receive the URL's path and query params automatically, so `/view/myapp/site-overview?site=A12` reaches every widget as `site="A12"`.

**An embedded dashboard has no navigation of its own** — that is the entire difference between it and a
standard dashboard. It is a widget grid at a `/view/...` URL, sitting inside your app's existing
navigation, so it looks and behaves like any other page in your app.

---

## 4. A coded page that hosts a dashboard

The hybrid, and the one to reach for when a page is "a set of widgets plus logic I own". You render `EmbeddedDashboard` yourself, which means you choose the dashboard id, ship a default layout, pass context down, and put whatever you like around it.

```typescript
// src/views/analytics/AnalyticsView.tsx
import { EmbeddedDashboard, ResponsiveWidgetLayoutConfiguration } from 'uxp/components';
import defaultLayout from './dashboards/analytics.json';

const DASHBOARD_IDS = ['my-analytics'];

export const AnalyticsView = () => (
    <EmbeddedDashboard
        ids={DASHBOARD_IDS}
        defaultConfiguration={defaultLayout as unknown as ResponsiveWidgetLayoutConfiguration}
        allowToConfigure={true}
    />
);
```

A saved dashboard always wins over `defaultConfiguration`, so shipping a default is additive — it gives a fresh account a composed page without overwriting anyone's customisation. See [EmbeddedDashboard](./embedded-dashboard.md) for every prop, and the [walkthrough](./dashboard-page-walkthrough.md) for a page built this way end to end.

---

## What a page receives

Whichever route you take, a rendered page component gets one merged props object, lowest precedence first:

| Source | What it is |
|---|---|
| `defaultProps` | Defaults from the component's `configs.props` schema |
| `configuredProps` | Values saved against the route or navigation link |
| URL params + query + navigation events | `/portfolios/:id` and `?site=A12` arrive as plain props |
| `uxpContext` | The UXP context — services, user, localisation, theme |
| `isPreview` | `true` when rendered in a preview surface |

So a route of `/portfolios/:id` visited as `/view/myapp/portfolios/42?tab=costs` hands your component `{ id: "42", tab: "costs", uxpContext, isPreview: false }`.

---

## Next Steps

- [Build a dashboard page end to end](./dashboard-page-walkthrough.md) — the Page Views example: widgets, drill-downs, filters, shipped layouts
- [EmbeddedDashboard](./embedded-dashboard.md) — every prop, edit mode, background surfaces, dashboard filters
- [Unified Component Registry](./unified-components.md) — `registerComponent` in full
- [Navigation Configuration](./navigation.md) — link types, permissions, URL generation
