# Page View Analytics

Records who used which page, when, and for how long. Tracking is automatic for logged-in users (public sessions are excluded); data is stored in MongoDB per account.

- **Location:** **Administration > Monitoring > Page Views** (requires `System:canmanage`).
- **What Is Tracked:** One view per distinct page URL after routing settles; tab hidden/visible; idle after 10 minutes without input. Active time excludes hidden/idle spans. The user and session are identified server-side from the session — the browser sends nothing identifying.
- **How Events Are Sent:** Each event is its own `POST api/pageview/track` request. It is never part of an `ExecuteBatch` call. The page does not wait for it.
  - The server tells the page at load time whether tracking is on. Nothing is sent when tracking is off or for a public session.
  - The server answers at once and stores the event in the background.
  - **Testing Focus:** open the browser network tab and navigate. Expect one `api/pageview/track` request per page, and one each for tab hidden and tab visible. Expect no page-view item inside any `ExecuteBatch` request.
- **When the Page-View Store Is Down:** Pages load at normal speed. Page views from that time are not recorded and are not sent again later. Recording resumes by itself once the store is back. This can take about 30 seconds. No restart is needed.
  - The Page Views page shows a centred warning, "Page view store is not available", instead of the dashboard. Open the page again to check whether the store is back.
  - The server log gets one line when recording stops and one line when it resumes, with the number of page views that were not recorded.
  - **Testing Focus:** stop MongoDB with the app open → navigate through several apps → every page loads as usual and each `api/pageview/track` request answers at once; the Page Views page shows the warning. Start MongoDB → wait about 30 seconds → open the Page Views page again → the dashboard returns and new views are recorded.
- **Recording Widget:** A band under the KPI cards shows when page views were being recorded. Each cell is one hour or one day. Green is recording, dark grey is tracking turned off, red is the store not available. A cell is split in proportion, so a short outage shows as a thin part. The tooltip gives the time lost in that cell. Hours and days in the future are pale.
  - The widget follows the date range. It ignores the page and user filters.
  - An account that has customised its Page Views dashboard keeps its own layout. Add the widget in edit mode, or use **Restore** to get the shipped default.
  - **Testing Focus:** turn tracking off, wait a minute, turn it on → the cell for that time shows a grey part. Stop and start MongoDB as above → the cell shows a red part. The KPI cards, lists and charts must not count these periods as page views.
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
  - Page views are not recorded while the page-view store is down. They are not sent again later.
  - A page left open across an outage or a tracking-off period gets the whole gap as its duration.
  - The Recording widget only knows about periods from this version onward. A time with no page views and no recorded off or down period shows as recording.
  - If the store goes down while the Page Views page is already on screen, its widgets show empty data until the page is opened again.
