# Injected Detail Tabs

Push tabs into another app's object detail panel — without that app knowing anything about you.

---

## Concept

When the Location app renders a location detail panel, the Asset app can automatically add an "Assets" tab to it. No changes needed in the Location app. This is the **push model** — contributors declare what they provide; the host renders whatever has been registered.

This differs from [Pluggable Views](./pluggable-views.md), which is a **pull model** (the host declares a replaceable slot; an admin picks what fills it).

**Use cases:**
- Asset app adds "Assets" tab to Location details
- UMS app adds "Users" tab to any detail panel
- Work Order app adds "Open Work Orders" tab to Asset details

---

## How It Works

1. **Contributing app** calls `registerTabInjection()` once at module load time in `index.tsx` to declare: "I provide a tab for `objectType='location'`".
2. **Host app** passes `objectType="location"` to `<ObjectDetailsPanel>`. No other changes needed.
3. **UXP** reads the admin-configured tabs for `"location"` from context, renders each as a right-gutter icon + slide-out panel using the contributing app's components.
4. **Admins** configure which injections are active and customise their appearance and access via the Page Editor (global floating edit button).

---

## Contributing App — Declare a Tab

Call `registerTabInjection` once at module load time in your app's entry point (e.g. `index.tsx`).

```typescript
import { registerTabInjection } from 'uxp/components';

registerTabInjection({
    id: 'iviva-asset-app/location-assets',  // bundleId/tabId — must be unique
    objectType: 'location',                  // target object type (lowercase)
    name: 'Assets',
    icon: 'fas boxes',
    components: [
        { componentId: 'iviva-asset-app/asset-list', priority: 1 }
    ],
    appRoles: ['assets.viewer']  // optional: default role restriction
});
```

**Rules:**
- `id` must be fully-qualified: `"your-bundle-id/your-tab-id"` — use your app's bundle ID as the prefix
- `objectType` is normalised to lowercase automatically
- `components` lists the components to render inside the tab, stacked vertically, ordered by `priority`
- `appRoles` and `userGroups` are defaults — admins can override them per configured instance
- Registration is active for the lifetime of the app bundle — it disappears when the bundle is unloaded

---

## Host App — Accept Injected Tabs

Add `objectType` to an existing `<ObjectDetailsPanel>`. Nothing else changes.

```tsx
// Before
<ObjectDetailsPanel
    data={fetchLocation}
    title={...}
    additionlDetails={[...]}   // host's own right-panel entries — unaffected
/>

// After — just add objectType
<ObjectDetailsPanel
    data={fetchLocation}
    title={...}
    objectType="location"      // UXP auto-injects configured tabs for this type
    objectKey={locationKey}    // passed through to all injected components
    additionlDetails={[...]}
/>
```

Host-declared `additionlDetails` entries always appear first. Injected tabs are appended after.

---

## What Gets Passed to Injected Components

Each component inside a tab receives:
- `objectKey` — key of the object being viewed
- `objectType` — the objectType string (e.g. `"location"`)
- All route and search params from the current page
- Any per-component `configuredProps` set by the admin in the Tab Editor

---

## Admin Configuration

When a page has a mounted `ObjectDetailsPanel` with `objectType` set, the global floating edit button becomes active. Opening Page Editor shows a **Detail Tabs** section with the full list of registered injections for that object type.

Each injection row shows:
- **Toggle** — enable or disable the tab. Disabled tabs are hidden from users. Contributions not yet configured appear enabled by default (they fall through to their declared defaults).
- **Edit** (pencil icon) — override the tab's name, icon, app roles, and user groups for this object type.
- **Reset** (undo icon, shown only when overridden) — remove admin customisations and revert to the injection's declared defaults.
- **Preview panel** — right side shows a live preview of the selected tab's components. Use the "Show widget preview" toggle to render actual widget output instead of configuration placeholders.

Changes are saved to `AccountObjectTabs` in the database and apply to all users immediately.

---

## Authorization

Access to an injected tab is controlled by:
1. **Default roles/groups** declared in `registerTabInjection` (injection defaults)
2. **Admin override** — per-injection appRoles and userGroups set in the Tab Editor

If either `appRoles` or `userGroups` match the current user, the tab is shown. Both empty = visible to all.

---

## Module Removal

If the contributing app is removed or its bundle is not loaded, the DB record is preserved but the tab silently disappears at runtime (the component is not found). No errors. Re-loading the bundle restores the tab.
