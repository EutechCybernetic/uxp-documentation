# Injected Detail Tabs (Push Model)

This feature allows one application to "push" a new tab or panel into the detail view of an object belonging to a different application, without requiring the host app to be modified. This is the **Push Model**: the contributing app declares what it provides, and the host (UXP) automatically renders all registered components.

## Concept & Use Cases

- **Function:** Automatically adds a new tab to an object's detail panel (rendered as a right-gutter icon + slide-out panel).
- **Example:** The Asset App can add an "Assets" tab to a Location Detail Panel (hosted by the Location App).

## Configuration & Customization (Admin Focus)

Injected Tabs are configured through the **Page Editor** (using the global floating edit button) when viewing a page with an object detail panel.

- **Enable/Disable:** Tabs can be enabled or disabled globally. Disabled tabs disappear from the user's view.
- **Customization:** Admins can override the default **Name**, **Icon**, and **Access Control** (App Roles and User Groups) set by the contributing app.
- **Reset:** An admin can revert customizations to the defaults provided by the contributing app. **Testing focus:** on a detail panel that has an injected tab, rename it, change its icon and restrict it to a user group; confirm a user outside the group no longer sees it; disable it and confirm it is gone for everyone; then reset and confirm the contributing app's name, icon and access are back.
- **Declared Manifest:** Tabs are now declared in the contributing app's `bundle.json`, so the expected set is known up front — the detail panel gutter shows a single spinner until all declared tabs load (15-second cap, the same ceiling as page loading; one broken tab cannot block the rest).
- **Code First (NEW):** An admin customisation only applies to a tab the contributing app still registers. If the app stops registering a tab (or is removed), the customisation stays in the database but the tab is **not shown** — no error tab, no empty tab. It reappears with its customisation once an app registers that tab again. **Testing focus:** the Page Editor's Detail Tabs list and the live gutter must agree — a tab missing from the editor must also be missing from the panel.
- **Access Denied Behaviour:** Per-tab "When access is denied" option in the Page Editor's Detail Tabs section — default hides the tab from unauthorised users; ticking the option shows a "not authorised" message instead. **Testing focus:** restrict a tab to a role the test user lacks and view the panel as that user with the option unticked (tab hidden) and ticked (tab shows the message).

# Pluggable Views (Pull Model)

Pluggable Views define explicit, customizable slots within an application's UI, allowing administrators to replace the default content of that slot with a custom component from any other application. This is the **Pull Model**: the host app declares a replaceable slot, and the platform (via admin configuration) dictates what fills it.

## Concept & Use Cases

- **Function:** Overrides specific sections of an application's interface using a unique identifier (`viewId`).
- **Benefit:** Allows for deep customer customization (e.g., custom forms, summary cards) without modifying the core application code, ensuring core app updates do not conflict with overrides.
- **Example:** Replacing the default "Location Summary Card" with a completely custom component for that card.

## Configuration & Overrides

- **Default:** The application specifies a default component to load for each `viewId` slot.
- **Admin Action:** An admin can use the Page Editor or a similar configuration tool to associate a different, custom component with that specific `viewId`. The custom component replaces the default component in the UI. **Testing focus:** on a page with a pluggable slot, assign a different component to its `viewId`, save and reload (the custom component renders in the slot); remove the override and confirm the default component is back.

# Page and Content Customization

- The platform uses a **floating edit button** to enable comprehensive page and content customization.
- **Role Gate:** Customisation requires the dedicated role `System:cancustomisepagesanddashboards` (Customisations module). It is **not** granted to Administrator by default — it must be assigned explicitly. Without it, no floating pencil (page edit) or grid (dashboard edit) buttons appear anywhere; public sessions never see them. **Testing focus:** as an Administrator without the role, confirm no pencil or grid button appears; assign the role and confirm both appear after a reload; open a public page without a session and confirm neither appears.
- **Embedded Dashboards:** Dashboards embedded in detail tabs or page content are editable in place for role-holders; a dashboard nested inside another dashboard is never editable.
- **Display-only Previews:** In the Page Editor, clicking rows/buttons inside the content preview triggers nothing (no real actions or navigation); the tab gutter and widget-config placeholder remain clickable.
- Administrators can edit **any page** to replace existing components/widgets and precisely configure their associated properties (props).
- For a streamlined workflow, customization pages are directly accessible from the **navigation and custom routes configuration interfaces**.
- When configuring a component to render within navigation or custom routes, a button is available to immediately configure the **widget props**.
