# Widgets & Component Unification

Architectural change: the backend now stores widgets and UIs in one unified component store (`UXPComponents`), 100% backward compatible. There is **no visual change — QA cannot test this directly**.

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
- **Where to Test:** Works on embedded and standard dashboards alike — place a filter widget on a dashboard together with widgets that read the filter props.
