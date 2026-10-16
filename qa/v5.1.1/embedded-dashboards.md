# Embedded Dashboards: Export, Import and Layout Banner

An embedded dashboard (a dashboard inside an app page, or an admin **Embedded Dashboard** link) can be exported and imported from its own edit mode. In edit mode a banner says which layout each user group sees.

- **Where:** open the page with the embedded dashboard and switch to edit mode (`?configuredashboard=1`). The floating buttons show **Import dashboard** and **Export**.
- **Who:** users who can configure the dashboard, as before.
- **Dashboard ID:** an app's ID (for example `IBMS/dashboard`) or, for an admin link, the link's path (for example `/view/my-dashboard`).

# Export

- **File name:** `<ID>.WidgetConfigurations.json`. `/` becomes `-`, `,` becomes a space.
- **Content:** the stored configuration: default layout, every user group layout, grid settings and dashboard settings.
- **New:** the file also carries `__source__`: this account's breakpoints and their column counts. Import uses it to scale positions.
- **Developer defaults:** the file still works as a component's `defaultConfiguration`. `__source__` is ignored there and is never saved.

# Import

- **Target:** the dashboard being edited. The whole configuration of that ID is replaced.
- **File:** must be an embedded dashboard file. A standard dashboard file is refused: it is imported from the Lucy Import page. A file that is not JSON is refused.
- **User groups:** shown when the file has user group layouts. Each is matched to a group here by name. Change a match, or choose **Leave out**.
- **Breakpoints:** shown when the file's breakpoints or column counts differ. For each breakpoint here, choose the file's breakpoint. A **Scaled** chip shows where column counts differ.
- **Old files:** a file without `__source__` is not scaled. Breakpoints match by name. An info line says so.
- **Summary:** a warning that the whole configuration is replaced. One row for the default layout and one per kept group, with widget counts.
- **Run:** no action buttons while it runs. Then **Close**, or **Import again** on failure. Widgets not installed here are listed.
- **Group-only files:** a dashboard set up only per group (no default layout) imports without a default layout.

# Layout Banner (edit mode)

A banner in the top bar, centred, says what the selected group's users see.

- **Info:** "<Group> has no layout. Showing the Default Layout." The group has no layout of its own and falls back to the default.
- **Warning:** "<Group>'s layout is empty. Its users see a blank dashboard." The group has its own layout with no widgets.
- **Warning:** "<Group> has no layout. Its users see a blank dashboard." No own layout and no Default Layout.
- **Warning:** "No Default Layout is set." When Default Layout is picked and has no widgets.
- **No banner:** the group has its own layout with widgets.
- **Buttons:** they only open Dashboard Settings. Settings explains and confirms.
  - **Copy a layout:** opens Settings with **Copy from** expanded.
  - **Load the defaults:** opens Settings with **Default layout** expanded. Shown on the "layout is empty" banner when a Default Layout exists.
- **Close (X):** hides the banner for the selected group. Picking another group and back shows it again. Reload shows it again.
- **Size:** compact, as wide as its text. On a narrow window it starts at the left and the buttons wrap. It never sits under the group / breakpoint picker.
- **Done editing:** the banner goes away.

# Dashboard Settings > Default layout

- **Load the defaults (changed):** removes the selected group's own layout. The group then shows the Default Layout and follows its later changes. It no longer copies the default. Use **Copy from** for a copy.
- **Load the defaults:** disabled when the group has no layout of its own.
- **Save current layout as default:** disabled when the group has no layout of its own, or its layout is empty.
- **Save as default:** keeps every user group layout, as on standard dashboards.

# Other Changes

- **Wizards:** a wizard step that passes clears its old error mark. Before, a step kept its red mark after the error was fixed.

# By Design (not bugs)

- Import replaces the whole record of the ID: default layout, every group layout and settings.
- A group with an empty layout of its own shows a blank dashboard. It does not fall back. Use **Load the defaults** to make it fall back.
- The Lucy Import page does not import embedded dashboard files. It points to the dashboard's edit mode.

# Testing Focus

- Export and import on an app dashboard and on an admin Embedded Dashboard link.
- Accounts with different user groups and different column counts.
- An export from before this release (no `__source__`).
- The banner for each group state, and Load the defaults on a group with its own layout.
