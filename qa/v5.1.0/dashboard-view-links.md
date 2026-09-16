# Dashboard Links: View, Symlink and Access

A standard dashboard's **Links** tab can now add **View** and **Symlink** links — the same link types as in navigation configuration — and the **User Groups** and **App Roles** set on its links are now enforced.

- **Where:** **Platform > Experience > Dashboards and Portals > Dashboards**, edit a dashboard, **Links** tab. (The Links tab appears only when editing an existing dashboard.)

# View Links

The section renders the chosen page inside the dashboard instead of a widget grid.

- **Link:** Forced under the dashboard's URL, like a Sub Dashboard link: `/dashboard/<dashboard id>/<section>`. A `/view/...` path is refused. Query parameters are allowed and are passed to the page as props.
- **Page:** Required. Chosen with the view picker; the cog next to it sets the page's configured props.
- **Rendering:** The page opens with its configured props inside the dashboard — the dashboard's own links stay in the header. There is no add-widget or edit-dashboard action and no page-editor pencil on that section; the page is configured from the Links tab.

# Symlink Links

The section shows the symlink's target inside the dashboard, as a symlink does in navigation.

- **Link:** The symlink's own path, forced under `/dashboard/<dashboard id>/`; it may carry parameters (`/dashboard/<id>/asset/:key`).
- **Target:** Any route path — an app page (`/view/...`, with parameters) or a dashboard or dashboard section (`/dashboard/...`). Parameters the target needs that the link's own path does not have are given fixed values in **Param Values**.
- **Rendering:** An app-page target renders that page (with its configured props and the resolved parameters); a dashboard target renders that dashboard's widgets — both under this dashboard's links. A target that does not exist shows "Unable to find the view".
- **Access:** The target is checked too: a target page the user may not open, or a target dashboard (or section) that excludes them, gives Access Denied.

# Link Access (User Groups and App Roles)

- **Enforced:** A user who is not in the link's User Groups and holds none of its App Roles does not see the link, and opening its section URL directly gives **Access Denied**. Empty = everyone who can open the dashboard.
- **Inherited:** A restriction on a group applies to all its children; a group whose children are all hidden is not shown.
- **Old Dashboards:** Links migrated from v4 are enforced the same way, using their Roles.
- **Public Dashboards:** A visitor without a session never sees or opens a restricted link.
- **On Top of the Dashboard:** The dashboard's own Allowed User Groups still apply first.

# Testing Focus

- **View:** add a View link — the Link is prefilled under `/dashboard/<id>/`; a `/view/...` path or an empty page blocks the save; set a configured prop with the cog. Open the dashboard and click it: the page renders with the prop, the dashboard links stay, no add-widget, edit or page-editor pencil. Reload the section URL: the same page renders. A query parameter on the link reaches the page.
- **Symlink to a page:** add a Symlink whose target is an app page with a parameter (e.g. an object details page) and map the parameter to a fixed value: the section renders that page for that value. With a parameter in the link's own path instead, open the URL with a value: the page receives it.
- **Symlink to a dashboard:** target another dashboard (and one of its sections): its widgets render under this dashboard's links. Target a dashboard that excludes the user: Access Denied.
- **Access:** restrict a Sub Dashboard, View and Symlink link to group A — as a user outside A they are hidden and their URLs give Access Denied; as a member of A they show and open. Restrict with an App Role instead: a holder passes. Restrict a group: its children are hidden and denied. Open a public dashboard without logging in: restricted links are hidden and denied.
- **Old dashboard:** on a dashboard migrated from v4 whose links have Roles, the same hiding and Access Denied apply; unrestricted links are unchanged.
- **Regression:** unrestricted sections and dashboards behave as before; a Sub Dashboard section still shows its widgets and can be edited; in Master Links, View and Symlink links are unchanged (Link starts with `/view/`, page optional); a normal app page still shows the page-editor pencil.
