# Accounts with More Than One Domain

An account can be reached on more than one web address. Widget scripts, logging out and widget screenshots all used to depend on the one address stored against the account, so everything except that address was affected. They now follow the address actually being used.

- **Where:** anywhere widgets load — **Platform > Experience > Dashboards and Portals**, the widget drawer on a dashboard, a standalone widget page, and the older portal pages.

# Widget Scripts

- **Fixed:** Each widget's script was fetched from the address stored in the account's **Account URL** setting, not from the address the page was open on. On any other domain the browser asked a site it had no session for, so the script never arrived and the widget stayed blank or reported that it could not be found. Dashboards, the widget drawer and the standalone widget page were all affected; only the stored address worked.
- **Now:** Widget scripts load from whichever address the page is on, so every domain mapped to the account behaves the same.
- **Saved Dashboards:** Dashboards and saved widget records created before this fix still hold the old full address. It is corrected as they load, so they work on every domain without being opened and saved again.

# Logging Out

- **Fixed:** Logging out sent its request to the stored address. From any other domain that was a request to a different site, so the session was not ended and the user stayed logged in.
- **Now:** The logout request goes to the address being used, and works from every domain.

# Widget Screenshots

- **Fixed:** Screenshots of widgets, used by reports and exports, told the screenshot service to fetch widgets from the stored address. From another domain it either failed or captured nothing.
- **Now:** The screenshot service is given the address the request came in on.

# By Design (not bugs)

- **Marketplace Widgets:** A widget that is listed but not installed still loads from the external marketplace store, at a full web address. That is correct and unchanged — only widgets installed into the account are served by the account itself.
- **Account URL Setting:** The setting is still there and still used for things like emailed links. Widgets, logout and screenshots simply no longer depend on it. Leaving it empty is fine.
- **One Session Per Domain:** Signing in on one domain does not sign you in on another. Each is a separate site to the browser, so a first visit to a second domain asks for a login.

# Testing Focus

- **Two domains:** With an account reachable on two addresses, open the same dashboard on each. Every widget renders on both, and the page reports no missing scripts.
- **Widget drawer:** Open the widget drawer on each domain and add a widget. The list fills and the widget renders in both cases.
- **Standalone widget page:** Open a single widget's own page on each domain. It renders on both.
- **Older portal pages:** Open a portal page on each domain. Its widgets render on both.
- **Existing dashboards:** Open a dashboard built before this release on the second domain, without re-saving it. Its widgets render.
- **Logging out:** Log out from each domain in turn. Each ends the session and returns to the login page.
- **Screenshots:** Produce a widget screenshot, or a report containing one, from each domain. The image is captured both times.
- **Marketplace:** In the widget drawer, confirm widgets that are not installed still appear and can be installed.
- **Regression:** On an account with a single domain, nothing changes — widgets, logout and screenshots behave exactly as before.
- **See Also:** [Widgets & Dashboards](../v5.0.0/widgets-dashboards.md), [Authentication & Login Page](../v5.0.0/authentication.md).
