# EmbeddedDashboard

`EmbeddedDashboard` renders a configurable widget grid inside any page — a details panel, a landing page, or a digital twin overlay — without navigation. Layouts are persisted per-ID to the backend; the component handles loading, saving, and edit mode automatically.

---

## Step 1: Basic Usage

The minimum required prop is `ids`. The component loads the first matching layout from the database.

```typescript
// src/views/equipment/EquipmentView.tsx
import React from "react";
import { EmbeddedDashboard } from "uxp/components";

const EquipmentView: React.FC = () => {
    return (
        <div style={{ position: "relative", width: "100%", height: "100%" }}>
            <EmbeddedDashboard
                ids={["myapp/equipment/main"]}
            />
        </div>
    );
};

export default EquipmentView;
```

---

## Step 2: Priority-Based ID Loading

Pass multiple IDs in priority order. The component queries the backend for each ID in sequence and uses the **first one that has a saved record**. Saves always go to the first matching ID (or the last ID if none matched — the most generic fallback).

Each entry is a `DashboardIdEntry` — either a plain `string` or `{ id: string; label: string }`. Use the object form to show a human-readable name in the dashboard selector dropdown during edit mode. Plain strings work as before; the label defaults to the ID value.

```typescript
// src/views/equipment/EquipmentDetailsView.tsx
import { EmbeddedDashboard, DashboardIdEntry } from "uxp/components";

interface EquipmentDetailsViewProps {
    equipmentKey: string;   // e.g. "chiller-123"  — from route params
    equipmentName: string;  // e.g. "Chiller 123"  — human-readable name
    equipmentType: string;  // e.g. "fcu"          — loaded from asset record
}

const EquipmentDetailsView: React.FC<EquipmentDetailsViewProps> = ({
    equipmentKey,
    equipmentName,
    equipmentType,
}) => {
    const dashboardIds: DashboardIdEntry[] = [
        { id: `ibms/equipment/${equipmentKey}`, label: equipmentName }, // "Chiller 123"
        { id: `ibms/equipment/${equipmentType}`, label: equipmentType }, // "FCU"
        { id: "ibms/equipment", label: "Default" },
    ];

    return (
        <EmbeddedDashboard
            ids={dashboardIds}
            allowToConfigure={true}
        />
    );
};
```

**Priority resolution:**

| Scenario | Layout used |
|----------|-------------|
| Record exists for `ibms/equipment/chiller-123` | Loads that record |
| No record for specific, but one for `ibms/equipment/fcu` | Loads type-level |
| No records at all | Empty dashboard; saves create `ibms/equipment` |

---

## Step 3: Default Configuration

Supply a `defaultConfiguration` to pre-populate the dashboard when no database record exists. Typically loaded from a JSON file checked into your module.

```typescript
// src/views/equipment/EquipmentView.tsx
import defaultConfig from "./dashboards/equipment-default.json";
import { EmbeddedDashboard, DashboardIdEntry, ResponsiveWidgetLayoutConfiguration } from "uxp/components";

const dashboardIds: DashboardIdEntry[] = [
    { id: `ibms/equipment/${equipmentKey}`, label: 'Specific Equipment' },
    { id: `ibms/equipment/${equipmentType}`, label: 'Equipment Type Dashboard' },
    { id: "ibms/equipment", label: "Default" },
];

<EmbeddedDashboard
    ids={dashboardIds}
    defaultConfiguration={defaultConfig as ResponsiveWidgetLayoutConfiguration}
    allowToConfigure={true}
/>
```

The default configuration is only used when **none** of the IDs resolve to a database record. Once a user saves changes, the database record takes over.

---

## Step 4: Edit Mode

Set `allowToConfigure={true}` to enable the floating action toolbar. Edit mode is activated via the `?configuredashboard=1` URL parameter — the component reads this automatically.

```typescript
<EmbeddedDashboard
    ids={["myapp/equipment/main"]}
    allowToConfigure={true}
/>
```

In edit mode the toolbar shows:

| Button | Action |
|--------|--------|
| Edit / Done | Toggle edit mode |
| Add widget | Open widget drawer |
| Export | Download layout as JSON |
| Restore | Delete saved record and reload defaults |

Users enter edit mode by clicking the edit button in the floating bar; the URL updates to `?configuredashboard=1`. Refreshing the page while that param is present re-enters edit mode.

---

## Step 5: User Group Layouts

Enable `enableUserGroupLayouts` to store and load separate widget layouts per user group. The active group is auto-detected from `context.userDetails.UserGroupID`; editors can switch groups in the config panel.

```typescript
<EmbeddedDashboard
    ids={["myapp/equipment/main"]}
    allowToConfigure={true}
    enableUserGroupLayouts={true}
/>
```

Each group's layout is stored inside the same database record under `userGroupLayouts[groupId]`. The default layout (no group) is always the fallback when a group has no custom layout yet.

---

## Step 6: Responsive Breakpoints

Enable `enableResponsiveLayouts` to allow editors to configure separate widget positions per screen size. A breakpoint selector appears in the edit toolbar.

```typescript
<EmbeddedDashboard
    ids={["myapp/equipment/main"]}
    allowToConfigure={true}
    enableResponsiveLayouts={true}
/>
```

The built-in breakpoints cover common screen sizes (phone, tablet, laptop, desktop, 4K). The dashboard automatically responds to the browser's actual viewport width during normal use; the breakpoint selector in edit mode lets editors preview and configure each size independently.

---

## Step 7: Overlay Mode

`overlayMode` renders the widget grid as a **transparent layer** over a background component. Clicking empty areas of the grid passes through to whatever is behind it (e.g. a digital twin viewer or floor plan).

```typescript
// Parent component must be position: relative
<div style={{ position: "relative", width: "100%", height: "100%" }}>
    <MyFloorPlanViewer />   {/* background — sits below */}

    <EmbeddedDashboard
        ids={["ibms/location/floor-1"]}
        allowToConfigure={true}
        overlayMode={true}
        autoPassedProps={{ locationKey: "floor-1" }}
    />
</div>
```

### `autoPassedProps`

Props in `autoPassedProps` are merged into every widget's props at render time. This is useful for passing context (e.g. the current location key) to all widgets without each widget needing to read it from the URL.

In overlay mode, `autoPassedProps` is also merged with payloads from `dt-view-change-event` events (fired when the digital twin view changes). This allows widgets to react to what the user is looking at in the background.

```typescript
// Widget receives: { uxpContext, locationKey: "floor-1", ...eventPayload }
```

---

## Step 8: Background Surfaces

Background surfaces let you render a configurable component **behind** the widget grid. Enable it with `enableBackgroundConfig` and provide the `objectType` for compatibility filtering.

```typescript
<EmbeddedDashboard
    ids={["ibms/location/floor-1"]}
    allowToConfigure={true}
    overlayMode={true}
    objectType="Location"
    enableBackgroundConfig={true}
/>
```

In edit mode, a paint-brush button appears in the floating toolbar. Clicking it opens the background configuration modal where the editor can choose a background and configure it.

### Registering a Background Surface

Register surfaces from your module's setup code (same pattern as `registerWidget`):

```typescript
window.registerBackgroundSurface({
    type: "floor-plan",
    label: "Floor Plan",
    description: "Renders a floor plan as the background",
    compatibleObjects: ["Location"],   // omit or use ['*'] for all object types
    component: FloorPlanBackground,
    configPanel: FloorPlanConfigPanel, // custom config UI (see below)
});
```

The `component` receives the current config props as its own props:

```typescript
const FloorPlanBackground: React.FC<{ floorId?: string }> = ({ floorId }) => {
    return <FloorPlanViewer floor={floorId} />;
};
```

### Config Pattern 1 — JSON field array (`props`)

Define `props` as a `DynamicFormFieldProps[]` array. The background config modal automatically renders a form for these fields; the saved values are forwarded to the background component as props.

```typescript
import type { DynamicFormFieldProps } from "uxp/components";

window.registerBackgroundSurface({
    type: "heatmap",
    label: "Heatmap",
    component: HeatmapBackground,
    compatibleObjects: ["*"],
    props: [
        {
            name: "dataStream",
            label: "Data Stream",
            type: "string",
            value: "temperature",
        },
        {
            name: "opacity",
            label: "Opacity",
            type: "number",
            value: 0.8,
        }
    ] as DynamicFormFieldProps[],
});
```

### Config Pattern 2 — Custom config component (`configPanel`)

For richer configuration UIs, register a `configPanel` component. It receives `config` (the current saved config) and `onChange` (call this to update and save):

```typescript
import type { BackgroundConfigPanelProps } from "uxp/components";
import { FormField, Label, Input } from "uxp/components";

const FloorPlanConfigPanel: React.FC<BackgroundConfigPanelProps> = ({ config, onChange }) => {
    const floorId = config?.props?.floorId ?? "";

    return (
        <FormField inline>
            <Label>Floor ID</Label>
            <Input
                value={floorId}
                onChange={(value) =>
                    onChange({ ...config, props: { ...(config?.props || {}), floorId: value } })
                }
                placeholder="e.g. ground, level-1"
            />
        </FormField>
    );
};

window.registerBackgroundSurface({
    type: "floor-plan",
    label: "Floor Plan",
    component: FloorPlanBackground,
    compatibleObjects: ["Location"],
    configPanel: FloorPlanConfigPanel,
});
```

> Use `configPanel` when your background needs complex configuration (colour pickers, multi-step forms, live preview). Use the `props` array for simple text/number/select fields.

---

## Props Reference

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `ids` | `(string \| { id: string; label: string })[]` | required | Priority-ordered IDs. Use `{ id, label }` to show readable names in the selector |
| `defaultConfiguration` | `ResponsiveWidgetLayoutConfiguration` | — | Fallback layout when no DB record exists |
| `allowToConfigure` | `boolean` | `false` | Show edit mode / floating action toolbar |
| `enableUserGroupLayouts` | `boolean` | `false` | Enable per-user-group layouts |
| `enableResponsiveLayouts` | `boolean` | `false` | Enable responsive breakpoint selector |
| `overlayMode` | `boolean` | `false` | Transparent overlay; empty areas are click-through |
| `objectType` | `string` | — | Object type context for background compatibility filtering |
| `enableBackgroundConfig` | `boolean` | `false` | Show background config button in edit mode |
| `autoPassedProps` | `Record<string, any>` | — | Props merged into every widget at render time |

---

## BackgroundSurface Reference

| Field | Type | Description |
|-------|------|-------------|
| `type` | `string` | Unique identifier (e.g. `"floor-plan"`) |
| `label` | `string` | Display name shown in the selector |
| `description` | `string` | Optional tooltip description |
| `component` | `React.ComponentType<any>` | React component rendered as the background |
| `compatibleObjects` | `string[]` | Limit to specific `objectType` values; `['*']` or omit for all |
| `props` | `DynamicFormFieldProps[]` | JSON-driven config fields rendered by DynamicForm |
| `configPanel` | `React.FC<BackgroundConfigPanelProps>` | Custom config React component (`configPanel` takes priority over `props`) |

---

## Next Steps

- [Core Components Reference](./core-components.md) — widget components available for your dashboards
- [Data Fetching](./data-fetching.md) — how widgets call backend services
- [Events](./events.md) — real-time event bus used by overlay mode
