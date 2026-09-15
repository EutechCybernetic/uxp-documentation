# v5.0.1

Patch release. Bug fixes on top of [v5.0.0](../v5.0.0/README.md); everything there still applies.

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
