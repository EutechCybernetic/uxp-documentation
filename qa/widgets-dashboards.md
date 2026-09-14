# Widgets & Component Unification

Architectural change: the backend now stores widgets and UIs in one unified component store (`UXPComponents`), 100% backward compatible. There is **no visual change — QA cannot test this directly**.

# Widget Designer

The Widgets link opens the widget designer.

- **Widgets List:** A Widgets list view exists under **Platform > Experience > Widgets** (searchable list with icon avatars, full-screen designer with an unsaved-change guard). The link is **currently hidden and will be enabled in the 5.1 release** — documented here so it can be tested then.

## Standalone Widget Page

Renders one widget on its own page.

- **URL:** `/view/widget/<name>`. The old v4 URL `/Apps/UXP/page/<name>` redirects here, keeping query parameters.
- **Sizing:** `?embedded=1` fills the frame 100%; otherwise the widget renders at its designed size, centred.
- **Anonymous Access:** Per-widget — "Allow anonymous access" in the widget designer's Share section. When off, anonymous visitors are redirected to login; access fails closed on any error.
- **Testing Focus:** open a widget's page while logged in (with and without `?embedded=1`), open an old `/Apps/UXP/page/<name>?x=1` URL (lands on the new URL with `x=1`), then log out and open it with anonymous access off (login page) and on (widget renders).

# Dashboard Roles

Dashboard permissions are now enforced with three UXP roles — and enforced **server-side**, so direct service calls without the role are rejected, not just hidden in the UI.

- **Edit Own Dashboard:** Personal layout changes (Normal Users have this by default).
- **Manage Dashboards:** Create, update and delete dashboards/portals.
- **Dashboard Administrator:** Set as Default, portal behaviour and grid settings.
- **Restore to Defaults:** Deletes only the user's personal layout so the shared default applies again — other users are untouched.
- **Note:** Adding `?configuredashboard=1` to the URL no longer forces edit mode without the role.
- **Widget Props Persist:** Props saved from a widget's configure panel must still be there after a page reload (fixed: a save could be lost when the panel used the older callback form).
- **Testing Focus:** give three test users one role each; confirm each can do only what their role allows in the UI, and that a user without Manage Dashboards cannot create or delete a dashboard. Change your personal layout, use Restore to Defaults, and confirm another user's layout is untouched.

# Dashboard Form & Links

Dashboards are created and edited from the Dashboards list (**Platform > Experience > Dashboards and Portals > Dashboards**).

- **Links Only in Edit:** The **Links** tab (sidebar links for the dashboard) is not shown while creating a dashboard — the dashboard ID is not settled yet, so a link could not be composed. It appears in Edit.
- **Create Opens Edit:** Saving a new dashboard keeps the form open, switched to Edit for that dashboard (URL changes from `?add=1` to `?edit=<key>`), so links can be configured immediately. Cancelling the create still closes the form.
- **Sub Dashboard Links:** In the Links tab, a Sub Dashboard link is composed as `/dashboard/<dashboard id>/<section>` and must validate (previously rejected with "The path must start with /view"). View links still require `/view/`; see Link Path Validation under Navigation.

## Dashboard Access (NEW)

- **Allowed User Groups (NEW):** enforced in the shell when a dashboard is opened (UI gating; the portal service itself is unchanged). Users outside the groups get Access Denied — by URL, sub-dashboard URL, or a symlink to it. Empty = all logged-in users. Public dashboards ignore it. Embedded dashboards are not affected. Editors are not exempt: an admin whose group is not listed must add it. Anonymous visitors on a non-public or unknown dashboard are sent to the login page and return to it after login; pages restored from the browser's back/forward cache reload, so Back never shows a page the session may not see.
- **Testing Focus:** set Allowed User Groups on a dashboard to group A and add a sub-dashboard link and a navigation symlink to it; as a user outside A, each of the three URLs gives Access Denied, and as a member of A each opens. Log out, open the dashboard URL, log in, and confirm you land on it.

# Dashboard Filters (NEW)

A purpose-built filter widget can filter the dashboard it sits on. This is **not automatic** — a widget must explicitly use the dashboard filters hook; ordinary widgets never trigger filtering.

- **Explicit Trigger:** Only a widget written as a filter (calling `useDashboardFilters().setFilters`) changes the dashboard's filters — intended for a global/dashboard-level filter widget.
- **Delivery:** The dashboard merges the current filter values into every widget's props at render time; a widget reacts only if it is built to read those props.
- **Isolation:** With a details panel open over a page dashboard, each filters only itself — the panel's filters never leak to the page behind it, and vice versa.
- **Where to Test:** Works on embedded and standard dashboards alike — the Page Views analytics page and its drill-down panels use it, and the Page Views widgets (with the filter widget) can be tested on any standard dashboard.
