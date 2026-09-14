# App Migrations

Five apps have been fully migrated to the v5 architecture: **System, User, UXP, Messaging Connector and Lucy**. For each, the QA focus is functional parity with v4 plus the new v5 modules. Features with their own pages in this guide are cross-linked, not repeated here.

# System App

Fully migrated with a completely new navigation structure. All v4 functionality is preserved, with the new v5 branding and navigation modules added.

- **Administration Menu:** General Settings · Access and Security (User Groups, Roles and Permissions, API Keys, SSO, OAuth, Settings) · Governance · System Configuration (Bulk Uploads) · Notifications (Templates, Email/SMS Queues, Settings) · Branding (Branding, Themes, Login Page, Localisations) · Navigation (Profiles, Master Links, Custom Routes) · Monitoring (Service Monitor, Scheduled Tasks, Subsystem Logs, Page Views) · Advanced (Cache Management).
- **Testing Focus:** Functional parity with v4 and verification of the new hierarchical structure.
  - User groups & Audit logs are now under system app - still they are accessible through User and AuditTrail apps as well
- **See Also:** [Navigation](navigation.md), [Theming & Branding](theming-branding.md), [Notification Templates](notification-templates.md), [Page View Analytics](page-view-analytics.md), [Bulk Import](bulk-import.md).

## Roles & Permissions

Found under **Administration > Access and Security > Roles and Permissions**.

- **Per-cell Search:** After Alt+T (expand all permissions), each multi-role cell's popup opens with a focused search box — matches by label or by role key. Long lists scroll instead of clipping.
- **New User Role Form:** The permission grid and copy-from dropdown load immediately (previously stuck on skeletons until a name was typed).
- **Wording:** Standardised to "User Role" / "Record Permission".

## General Settings

- **Languages:** The account's default language is always enabled and locked (shown with "(Default)"). Saving cannot remove it — including via direct service calls.
- **AI API Keys:** **General Settings > General > AI Models** section (OpenAI / Anthropic / Gemini keys). Visible only with the `System:canaccessgenai` role; editable only with `System:canupdategenai` — without it, fields are masked read-only and there is no Save.

## Localisation

The localisation UI is now complete, at **Administration > Branding > Localisations**.

- **Sync:** Syncing from an empty state shows a per-app progress modal and completes in seconds.
- **Editing:** Add/edit messages; per-cell revert (with confirm) restores the default value; filter by app and by "Not configured".
- **Bulk Translate:** The button appears only when Google Translate is enabled for the account.
- **Cache:** Clear cache applies changes without a restart.
- **Testing Focus:** edit a message, clear the cache and confirm the new text shows in the app; revert it and confirm the default returns; filter by an app and by "Not configured".

## Cache Management

Found under **Administration > Advanced > Cache Management**.

- **Scopes:** A table of server cache scopes (app config, widget modules, login, localisation, file versions) plus this browser's caches. Widget Modules and File Versions expand to per-item hash rows.
- **Actions:** Per-scope Clear (file versions are not clearable); **Clear all** clears server caches and the browser's caches (page reloads).
- **Embedded Buttons:** The same Clear cache buttons appear inside the navigation, localisation and login-page editors.
- **Testing Focus:** clear each scope on its own and confirm the app keeps working; use Clear all and confirm the page reloads; confirm File Versions has no Clear action.

# User App

- **Menu:** Users · User Groups · Documents · Configuration · My Profile · My Inbox · My Media.
- **See Also:** [User Inbox](notifications.md), [Media Library](media-library.md).

## User Management

- **Last Active:** Users list has a "Last Active" column (last login time; "Never" when the user has never logged in).
- **Credentials Locked on Edit:** Login ID, password, login-required and manage-password fields appear only when creating a user — editing an existing user cannot change them.
- **Site Picker:** The site picker in the user form pages and searches server-side — verify it stays responsive on accounts with thousands of sites.
- **Detail Routes:** Dedicated routes for details — `/view/user/user/<userKey>` and `/view/user/usergroup/<userGroupKey>`. The profile view has a new **Mobile App** tab.
- **Activity Log:** Now records blacklist add, profile edit, security-settings update, geo-location update and notification-settings update.

# UXP App

- **Menu:** Dashboards · Settings (the app's root lands on Dashboards).
- **See Also:** [Widgets & Dashboards](widgets-dashboards.md) — dashboard roles, dashboard filters, the widget designer (link hidden until 5.1) and the standalone widget page.

# Messaging Connector App

Migrated as a component bundle — it has no navigation of its own.

- **Where to Test:** Its template editor surfaces through **Administration > Notifications > Custom Notification Templates** — see [Notification Templates](notification-templates.md).

# Lucy App

- **Menu:** Models · Connectors · Monitor (Queue Jobs, File Manager Jobs, MQTT Subscriptions) · Settings.
- **Testing Focus:** Functional parity of the model designer, connectors and the monitor lists.

# List Pagination Totals

Cross-app change: Users, User Groups, Dashboards, Widgets, MQTT Subscriptions, File Manager Jobs and the object Documents tab now show the real total record count in pagination.

- Total respects the active search and filters; the last page is reachable; sorting doesn't change the total.
