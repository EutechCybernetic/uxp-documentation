# Dashboards: Export and Import

A standard dashboard can be exported to a file and imported into another account. The file carries the dashboard, its linked dashboards and their layouts.

- **Export:** **Platform > Experience > Dashboards and Portals > Dashboards**, row action **Export**. Shown only with the UXP app role `canmanagedashboards`.
- **Import:** **Lucy > Settings > Import**. Drop the dashboard file. See [Lucy: Import Page](lucy-import-page.md).

# What the File Carries

- **Included:** dashboard details, access (user groups), links, settings and layouts. Layouts include every user group layout.
- **Not included:** widgets. Widgets are imported separately, before the dashboard.
- **Linked dashboards:** dashboards the exported one links to can go in the same file.

# Export Wizard

- **Linked dashboards:** shown when the dashboard links to others. Tick the ones to export with it. Linked dashboards that are not in this account are listed. They cannot be exported.
- **Layout:** shown when your own layout differs from the saved default. Per dashboard, choose **Saved default** (what every user sees today) or **My layout** (your own, with changes not set as default).
- **Files:** with more than one dashboard, choose **One file** (import once) or **A file per dashboard** (import one at a time).
- **Progress:** each file shows its own progress. A failed file has **Export again**.
- **End:** no action buttons while it runs. Only **Close** at the end, with a success line.

# Import Wizard

Steps show only when needed.

- **File:** the file is checked. A file that cannot be read is refused with a reason.
- **Dashboards:** shown when the file has linked dashboards. Tick the ones to import with the main one.
- **User groups:** each group in the file is matched to a group here by name. Change a match, or choose **Leave out**. A table shows where each group is used: access, links, layouts.
- **Public user:** shown for a public dashboard. Choose the user it runs as here. Required.
- **Breakpoints:** shown when the file's breakpoints or column counts differ from this account. For each breakpoint here, choose the file's breakpoint that supplies its layout. A **Scaled** chip shows where column counts differ.
- **Summary:** one row per dashboard, with chips: ID, **New** or **Replaces existing**, and the layout count.
- **Run:** no action buttons while it runs. Then **Close**, or **Import again** on the first row when it fails. Each imported dashboard has **Open dashboard**.

# Behaviour

- **Same ID:** a dashboard with the same ID is replaced.
- **Layouts:** saved as your own layout. Set them as default to share them.
- **Scaling:** when column counts differ, widget positions and sizes are scaled to this account's columns.
- **Left-out groups:** removed from access, links and layouts. A step warning lists them.
- **No group left:** when no user group is left in the access list, the dashboard has no user group restriction. A warning says so.
- **After the import:** a row lists only what is missing in this account: linked dashboards, pages, symlink targets, widgets not installed. View links with configured settings are listed to check.

# By Design (not bugs)

- Widgets are not in the file. A dashboard whose widgets are missing shows them as unavailable.
- A linked dashboard that is not imported has a link that opens nothing until it is imported.
- Breakpoints in the file with no matching breakpoint here are not imported. A warning lists them.

# Testing Focus

- Dashboards with user group layouts, linked dashboards, and a public dashboard.
- Accounts with different user groups and different breakpoint column counts.
- Replacing an existing dashboard versus a new ID.
