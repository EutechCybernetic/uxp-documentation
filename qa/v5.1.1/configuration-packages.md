# Import and Export Wizards: Configuration Packages, Templates, Dashboards

Configuration import and export work like the dashboard and Lucy import and export. All import wizards share one clean layout.

- **Tickets:** [LPVR-1246](https://eutech.atlassian.net/browse/LPVR-1246), [LPVR-1028](https://eutech.atlassian.net/browse/LPVR-1028).
- **Configuration packages:** the Export and Import buttons on **Branding**, **Themes**, **Login Page**, **Navigation > Profiles / Master Links / Custom Routes**, and **Notifications > Settings > In App Notification**.
- **Notification templates:** the Import button on **Notifications > System Notification Templates** and **Custom Notification Templates**.
- **Dashboards:** **Lucy > Settings > Import** (dashboard file), and the embedded dashboard import in edit mode (`?configuredashboard=1`).

# Look

- **Steps:** a smaller step bar at the top of every wizard. It is hidden once the import or export has run.
- **File step:** a short hint, then a large drop area with "Drop a .json file here, or click to browse" and a line on what the file is.
- **Notices:** each notice has an icon. Lists of items (not imported, not found) show one line per item.
- **Long lists:** a list (pages, user groups, links, changed fields) sits behind a small "128 items ▾" dropdown. More than 10 items get a search box.
- **Result:** a success or failure notice at the top, then one row per item: Added, Updated, Imported or Downloaded. A failed item shows its reason and **Import again**.
- **After the import:** notes on a row are info notices that say what was done, e.g. "Added at the top level, because its parent link … is not here."

# Configuration Import

- **File:** the file, then **Options** with two switches, each with a short description:
  - **Add new items only:** existing items are left as they are.
  - **Import items with missing references:** items that point to a dashboard or link not in this account are imported without it. When off, they are not imported.
- **Before you import:** an info notice with **Download current** keeps a copy of what is here now.
- **User groups:** shown only when the file names user groups that are not here. Pick a group here for each, or **Leave out**. Groups with the same name match by themselves.
- **Summary:** how many items will change, with unchanged and skipped counts. **Not imported** lists each blocked item with its reason. **Not found in this account** lists missing pages, dashboards, apps and links. Then one row per item to add or update, with Add or Update and an "N changes ▾" dropdown. Each change shows the field, its value here and its value in the file (user groups by name; long values such as JSON or CSS show "Changed").
- **Missing parent link (Navigation):** an app's link is skipped with the reason. A custom link is added at the top level, with a warning.

# Configuration Export

- **Choice:** Themes, Branding and Navigation ask what to include. Each group is a list with **Select all** as the first row and "x of y selected".
- **No choice:** Login Page and Notification Categories go straight to the summary.
- **Result:** **Export complete**, then the file name, what it holds, and **Downloaded**. A failure shows the error and **Export again**.

# Notification Templates Import

- **File:** a `.xml` template export. System templates and custom templates each take their own export.
- **Summary:** one row per template in the file, with its object type (system) or subject (custom).
- **Import:** the file is uploaded as before. All rows end as **Imported**. A failure shows on row 1 with **Import again**.

# Dashboard Import

- **Dashboards:** linked dashboards as a list with **Select all** first. Each row shows the dashboard ID and **New** or **Replaces existing**.
- **Result:** the success notice is at the top. The step bar is hidden.
- **After the import:** notes are info notices with done wording, e.g. "Imported with links to pages not on this site." Lists sit behind a dropdown.

# Messages (LPVR-1028)

- A wrong file type, broken JSON or XML, a file that is not a package, another area's package, or a newer package version: each shows its own clear message.
- All messages are localized.

# Testing Focus

- Each configuration screen: export, then import the same file. Expect nothing to change.
- Import from another account: new and changed items, user groups mapped and left out.
- **Add new items only** and **Allow missing references**.
- A navigation file with a custom link whose parent is missing.
- System and custom templates: export, then import the same file.
- Dashboard import with linked dashboards, ticking some.
- Other wizards (dashboard export, Register User, New Dashboard, Lucy file import): the step bar is smaller and the spacing tighter. Nothing else changes.
- Known, not new: Branding with a favicon always shows one update, because the image is uploaded again on import.

# uxp Components (for developers)

- **Step indicator:** smaller by default. `renderOptions.hideStepIndicator` hides it.
- **NotificationBlock:** optional `icon`, `title` in the bordered layout, and `lines` (icon, title, text, chips, action, list).
- **FileInput:** optional `dropzone` and `dropAreaHint`.
- **New:** `CheckboxList` (Select all first, "x of y selected") and `ListDropdown` (a list behind a small dropdown).
