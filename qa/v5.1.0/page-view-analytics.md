# Page View Analytics

Records who used which page, when, and for how long. Tracking is automatic for logged-in users (public sessions are excluded); data is stored in MongoDB per account.

- **Location:** **Administration > Monitoring > Page Views** (requires `System:canmanage`).
- **What Is Tracked:** One view per distinct page URL after routing settles; tab hidden/visible; idle after 10 minutes without input. Active time excludes hidden/idle spans. The user and session are identified server-side from the session — the browser sends nothing identifying.
- **Dashboards:** KPI cards, trend, top pages, top users, peak periods, hour-of-day, engagement and recent views, plus a filter widget. Widget footer links open drill-down panels; clicking a page or user row opens its detail panel. All drill-down state lives in the URL — reloadable and shareable.
- **Dashboard Filters:** The Page Views page and its drill-down panels use [dashboard filters](../v5.0.0/widgets-dashboards.md#dashboard-filters-new); the Page Views widgets, together with the filter widget, can also be tested on any standard dashboard.
- **Customisation:** The page is a normal dashboard — it can be recomposed like any other; a **Restore** action returns it to the shipped default.
- **Retention:** **General Settings > General > "Page view retention (days)"** — empty or 0 keeps data forever; otherwise a daily task purges older data.
- **Disable Switch:** **General Settings > General > "Enable page view tracking"**. The account setting always wins; the deployment config only sets the default for accounts that never chose (config off + account on = **on**). Changes apply after a page reload.
  - With tracking off: the Page Views page shows a centred warning with a **Go to General Settings** button instead of the dashboard; Page Views widgets on any dashboard show an inline warning in place of their content; the filter widget keeps its controls and shows a one-line warning where its title would be (click it for the detail).
  - **Testing Focus:** switch off → reload → no new rows in Page Views, warnings shown; switch on → reload → tracking and dashboards resume; the switch itself must show the effective state on load (off when the deployment default is off and the account never chose).
- **By Design (not bugs):**
  - The last page of a session has no duration (durations are written when the next view arrives).
  - Pages are grouped by URL shape — record-key query values collapse into one entry (`?key=*`), while tab-like values are kept separate.
  - The analytics page tracks itself.
