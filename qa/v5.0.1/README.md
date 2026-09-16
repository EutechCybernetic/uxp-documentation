# v5.0.1

Patch release: bug fixes and one new feature on top of [v5.0.0](../v5.0.0/README.md); everything there still applies.

# Users: Edit User notification settings

**Platform > Master Data > Users**, then **Users** in the app menu > **Edit User > Other Settings**.

- **Fixed:** A user who was saved with **Receive messages by email** and **Receive messages as texts** turned on could not have both turned off with **Email** and **Mobile** cleared in the same save. The save was rejected with "Email Address should be configured when "Receive messages by email" checked." (or the Mobile equivalent). Users who never had the settings turned on were not affected.
- **Now:** The notification settings are saved before the user details, so turning a setting off and clearing its field in one save succeeds.
- **Testing Focus:**
  - Create a user with both settings on and Email and Mobile filled in. Edit the user, turn both settings off, clear Email and Mobile, and save: the save succeeds, and on reopening both settings are off and both fields are empty.
  - Edit a user with the settings off: turn **Receive messages by email** on and add an email in the same save. It saves and the setting stays on.
  - Turn **Receive messages by email** on with Email empty: the form blocks the save.
  - Create a user with both settings on: both are still on after saving.
  - **My Profile:** turning the settings off and clearing Email or Mobile still works there too.

# Data Explorer: query ID on the Queries list

**Platform > Data and Logic > Data Explorer > Queries.**

- **ID Column:** The list shows each query's ID next to its name.
- **Copy Button:** A copy button next to the ID copies it to the clipboard and shows "Query ID copied to clipboard". The button appears when the row is hovered or the button has keyboard focus.
- **Copy Query ID Action:** The row's actions menu has **Copy Query ID** between **Open in Data Explorer** and **Delete**.
- **Testing Focus:**
  - Hover a row: the copy button appears; move away: it hides and the column does not change width.
  - Click the copy button, paste somewhere: the query's ID is pasted, and the toast is shown. The Data Explorer panel does **not** open.
  - Use **Copy Query ID** from the actions menu: same result.
  - Click elsewhere on the row: the Data Explorer still opens for that query.

# Navigation: section headers open as Group / Label

**Administration > Navigation > Master Links.**

- **Fixed:** Sections in the default navigation that have no link or page of their own (Smart Building, Operations, Sustainability, Facility Management, Commissioning, Platform, Master Data, Data and Logic, Data Explorer, Experience, Integrations, Administration, Admin Tools and similar) opened in the link form as **View**, which requires a link, so an admin could not edit them without inventing one.
- **Now:** These sections are marked as **Group / Label**. The link form opens them as Group / Label with no Link field. The sidebar, their URLs (each still opens its first page) and who can see them are unchanged.
- **When It Applies:** After **Sync from configurations** (or a per-app Compare & Sync for the section's app). A section an admin edited before the upgrade keeps its old type until it is reverted or overridden from the YML.
- **Testing Focus:**
  - Run **Sync from configurations**, then edit a section header such as Platform: the form shows **Group / Label** and no Link field. Change its label and save: it saves without asking for a link.
  - Open each top-level section and its sub-sections from the sidebar: every one still opens its first page, as before the sync.
  - As a user restricted to some apps, confirm the visible sections are the same as before the sync.

# Branding: the brand colour no longer repaints buttons and status colours

**Location:** **Administration > Branding > Branding > Theme Branding**.

- **Fixed:** Setting a brand colour repainted far more than the page chrome. Primary buttons, info message blocks, on-going status pills, alert and toast colours and four chart colours all followed the brand colour too. On a green brand the primary button, the info block and a success chip all looked the same, so users could no longer tell them apart.
- **Now:** The brand colour paints chrome only. That is the header, the navigation hover and selected states, the accent colour, selected and highlighted rows, links, the focus ring, the input focus border, the selected table row and the widget drawer.
- **Not touched by branding:** primary and secondary buttons, the info, success, warning and danger colours, status pills, alerts, toasts and chart colours. These carry meaning and keep their own colours whatever the brand colour is.
- **By Design (not bugs):**
  - An account branded before this release keeps its old palette. There is no migration. The chrome-only rule applies the next time someone saves branding on that theme.
  - The header colour is still whatever the admin picked, exactly. It is not re-derived.
- **Testing Focus:**
  - Brand a theme with a colour far from blue, such as green or maroon. The header and sidebar should follow it. A primary button, an info message block, a success chip and a danger button should each keep their own colour.
  - Save branding again on a theme that is already branded. Only the chrome colours should change.
  - Export branding, then import the same file back into the same account. It should still report no theme changes.
  - Open an account branded before this release. It should look exactly as it did, until branding is saved there again.
- **See Also:** [Theming & Branding](../v5.0.0/theming-branding.md).

# Configuration Packages: Export and Import

**Administration > Branding > Themes / Branding / Login Page**, **Administration > Navigation > Master Links / Profiles**, **Administration > Branding > Custom Routes**, and **Administration > Notifications > Settings > In-App**.

- **New:** Each of those screens now has **Export** and **Import** buttons. Export downloads that area's configuration as a single JSON file; Import reads one back, shows exactly what it would change, and applies it only after the admin confirms. It is how configuration moves between accounts and between servers — previously a manual rebuild. Requires `System:canmanage`.
- **What Travels:** Themes carry their name, type, flags and full colour set. Branding carries the favicon, global CSS, and each branded theme's brand colour, text colour and logo. The login page carries its layout, form styling and wording, with the logo and background image embedded in the file. Navigation carries master links, navigation profiles and custom routes. Notification categories carry their icon, details link, priority, object types and actions. Uploaded images travel inside the file, so a package is self-contained.
- **Choosing What to Export:** The navigation screens open a dialog to pick **Master links**, **Custom routes** and any individual **profiles**. Themes lists only themes that have colours of their own. Branding lists only themes that were actually branded, plus **Favicon** and **Global CSS** when those are set — a theme still on its built-in colours has nothing to send and is left out, with a note naming it. The screen you started from is pre-ticked, and Export stays disabled until something is selected.
- **Importing:** Choose a file, then **Preview**. The preview lists every item grouped by section, with what will happen to it — Add, Update, Unchanged, Skipped or Blocked — and, for an item that changes, a chip giving the number of changed fields that opens the full list. Items that will change are listed first; unchanged and skipped ones collapse behind a counted chip. Two options: **Add new items only** leaves existing items untouched, and **Import items whose user groups or pages are missing here** applies them without the missing reference instead of blocking. **Import** then applies it, rows move from **Pending** through **Importing** to **Added** or **Updated**, and the dialog ends on **Done**.
- **Moving Between Accounts:** References travel by name, not by internal key — user groups by name, dashboards by id, pages by component id. Anything the receiving account does not have is listed under **Not found in this account** and blocks that item until it exists, unless the "missing references" option is ticked.
- **Command Line:** The same services are scriptable, for example `sdm <account> execute System.ExportNavigation FilePath <file>`, with matching `PreviewImport…` and `Import…FromText` services per area. `FilePath` is refused from the browser.
- **By Design (not bugs):**
  - **Protected** links are never written to, and **locked** links keep their own access — an import cannot change who can reach them.
  - Links that come from an app's YML are updated but **never created**, because the next sync would delete anything invented.
  - Nothing is ever deleted. A package carrying no favicon will **not** clear a favicon the receiving account already has.
  - A navigation profile whose links are not in the receiving account is **Blocked** — the links have to arrive first, or be there already.
  - Themes report their whole colour set as a single change, while branding reports each property separately, so the same edit shows "1 change" on one screen and a few hundred on the other.
  - Re-importing a package whose favicon was an uploaded file always reports a change, because the image is written as a new file in the receiving account each time.
- **Testing Focus:**
  - Export an area and import the same file straight back into the same account: every item should report **Unchanged** and nothing should be written.
  - Export from one account and import into another where a referenced user group does not exist: the group is listed as not found and the item is **Blocked**; create the group with the same name and preview again: it becomes **Add** or **Update**.
  - After importing navigation, confirm protected links and locked links are untouched, and that the sidebar reflects the change without pressing **Clear cache**.
  - Import a file exported from a different area (a navigation package on the Themes screen): it is refused, naming both areas.
  - The **Failed** status has not been seen in practice — it appears only if a write fails part-way through an import, so it is worth trying to provoke.
- **See Also:** [Theming & Branding](../v5.0.0/theming-branding.md), [Navigation & Custom Routes](../v5.0.0/navigation.md), [Authentication & Login Page](../v5.0.0/authentication.md), [In-App Notifications](../v5.0.0/notifications.md), [Notification Templates](../v5.0.0/notification-templates.md).
