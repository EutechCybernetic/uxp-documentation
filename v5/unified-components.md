# Unified Component Registry

Understanding the new `registerComponent` API — why it exists, what it unlocks, and how to migrate from the legacy registration functions.

---

## Background

If you have built UXP components before, you are familiar with these functions:

- `registerWidget()` — registers a component that users can place on a dashboard grid
- `registerUI()` — registers a full-page view opened from a navigation link
- `registerLink()` — registers a sidebar navigation link
- `registerMenuItem()` — registers a header menu item

Each type lived in its own global registry (`window.Widgets`, `window.RenderUIItems`, etc.), had its own section in `bundle.json`, and was discovered through a different path in the widget drawer.

This worked, but it created a meaningful gap: **only widgets could declare a settings panel.** If you registered a UI view, users could navigate to it — but they could not configure it per-instance. There was no way to say "show this floor plan for Site A on this dashboard, and Site B on that one." You had to bake configuration into the view itself, or use URL parameters, or build a custom panel.

---

## What V5 Changes

V5 introduces a **unified component registry** — a single `window.Components` array that holds every component regardless of type. A new `registerComponent()` function is the one entry point for all of them.

The unification is not just organisational tidying. The important thing it enables is this:

> **Every component type — widget, UI view, and background surface — now supports `configs.props`.**

`configs.props` is the same configurable-fields system that widgets have always had. Users click "Configure" on a placed component and fill in a settings panel. Those values are saved per-instance and passed to the component as React props.

With the unified registry this works for all three types:
- A **widget** can declare props as before
- A **UI view** can declare props and be placed on a dashboard as a configurable widget — the same component works as both a full-page navigation view and a per-instance dashboard widget
- A **background surface** can declare props for color, image, animation speed, etc.

---

## What Changed

| Old | V5 equivalent | Still works? |
|---|---|---|
| `registerWidget(config)` | `registerComponent({ modes: ['widget'], ... })` | ✅ yes — adapter |
| `registerUI(config)` | `registerComponent({ modes: ['ui'], ... })` | ✅ yes — adapter |
| `registerLink(config)` | Navigation is defined in `Configuration.yml` — no-op in V5 | — |
| `registerMenuItem(config)` | No equivalent in V5 — no-op | — |
| `window.Widgets` | `window.Components` filtered by mode | ✅ live getter shim |
| `window.RenderUIItems` | `window.Components` filtered by mode | ✅ live getter shim |

**New in V5:** `registerComponent` also introduces `modes: ['background-surface']` — a component type that did not exist before. See the [background surface section](#background-surface-with-props) below.

**No immediate action is required.** The legacy functions are kept as thin adapters. Every call to `registerWidget` or `registerUI` writes into the unified registry through the same path as `registerComponent`. Existing projects work without any changes.

---

## Configurable Props for Every Component Type

### How props work

When a component declares `configs.props`, UXP renders those fields as a settings panel when the user clicks "Configure" on a placed instance. The field values are saved per instance and passed to the component as regular React props — there is no special API to call inside your component.

The form is rendered by `DynamicForm`, the same engine used throughout the platform.

### Available field types

| Type | When to use |
|---|---|
| `'text'` | Single-line text (keys, URLs, labels) |
| `'number'` | Numeric input |
| `'select'` | Dropdown — use `options` for a fixed list, `getOptions` for dynamic |
| `'toggle'` | Boolean toggle switch |
| `'checkbox'` | Boolean checkbox (same behaviour as toggle, different visual) |
| `'textarea'` | Multi-line text |
| `'json'` | Raw JSON editor for structured config objects |
| `'date'` / `'time'` / `'datetime'` | Date and time pickers |
| `'hidden'` | Not shown in the settings panel but persisted with the instance |

**Useful per-field options:**

| Option | Type | Description |
|---|---|---|
| `value` | any | Default value when the component is first placed |
| `placeholder` | string | Placeholder text inside the field |
| `options` | `Array<{label, value}>` | Static list of dropdown options |
| `getOptions` | `(data) => Array<{label, value}>` | Compute options dynamically from the current form values |
| `show` | `(data) => boolean` | Return `false` to hide this field based on other values |
| `validate.required` | boolean | Must have a value before the settings panel can be saved |
| `validate.minVal` / `validate.maxVal` | number | Numeric range constraints |
| `validate.customValidateFunction` | `(value, data) => {valid, error?}` | Custom validation, can be async |
| `checkboxLabel` | string | Label shown beside a toggle or checkbox |

---

### Widget with props

This is the familiar case — nothing changes from the old `registerWidget` pattern, except metadata now lives in `bundle.json`:

**bundle.json**
```json
{
    "id": "panel-layout",
    "name": "Panel Layout",
    "description": "A nested grid of widgets inside another widget",
    "modes": ["widget"],
    "tags": ["layout"],
    "vendor": "",
    "icon": "",
    "isTemplate": false
}
```

**index.tsx**
```typescript
registerComponent({
    id: 'panel-layout',   // must match the id in bundle.json
    component: PanelLayout,
    configs: {
        layout: { w: 20, h: 14 },
        props: [
            {
                name: 'orientation',
                label: 'Orientation',
                type: 'select',
                value: 'vertical',
                options: [
                    { label: 'Vertical',   value: 'vertical'   },
                    { label: 'Horizontal', value: 'horizontal' }
                ]
            },
            {
                name: 'columns',
                label: 'Columns',
                type: 'number',
                value: 30,
                show: (data) => data.orientation === 'vertical'   // hidden when horizontal
            },
            {
                name: 'rows',
                label: 'Rows',
                type: 'number',
                value: 20,
                show: (data) => data.orientation === 'horizontal'
            }
        ]
    },
    defaultProps: { orientation: 'vertical', columns: 30, rows: 20 }
});
```

The `show` function makes the panel context-aware — only the relevant dimension field is visible at a time.

---

### UI view with props — the new capability

A `registerUI` component previously had no settings panel. With `registerComponent` you can give it `configs.props` and add `'widget'` to its modes. The same component then works as a full-page navigation view **and** as a configurable per-instance dashboard widget.

**bundle.json**
```json
{
    "id": "floor-plan",
    "name": "Floor Plan",
    "description": "Interactive floor plan for a selected site and floor",
    "modes": ["widget", "ui"],
    "tags": ["floor-plan", "maps"],
    "vendor": "",
    "icon": "",
    "isTemplate": false
}
```

**index.tsx**
```typescript
registerComponent({
    id: 'floor-plan',   // must match the id in bundle.json
    component: FloorPlanView,
    configs: {
        layout: { w: 20, h: 14, minW: 10, minH: 8 },
        props: [
            {
                name: 'siteKey',
                label: 'Site',
                type: 'select',
                getOptions: async () => {
                    const sites = await fetchSites();
                    return sites.map(s => ({ label: s.name, value: s.key }));
                }
            },
            {
                name: 'floor',
                label: 'Floor',
                type: 'number',
                value: 1,
                validate: { required: true, minVal: 1 }
            },
            {
                name: 'showLabels',
                label: 'Show Labels',
                type: 'toggle',
                value: true
            }
        ]
    },
    defaultProps: { floor: 1, showLabels: true }
});
```

Your component receives configured values as normal props:

```typescript
interface FloorPlanProps {
    uxpContext?: IContextProvider;
    siteKey?: string;
    floor?: number;
    showLabels?: boolean;
}

const FloorPlanView: React.FC<FloorPlanProps> = ({ siteKey, floor, showLabels }) => {
    // When used as a widget: values come from the settings panel, unique per instance
    // When used as a full-page UI view: values are undefined unless passed via route params
    return ( ... );
};
```

One user can drag "Floor Plan" onto Dashboard A and configure it for Site A, Floor 1. Another user drags the same component onto Dashboard B and configures it for Site B, Floor 3. Each instance is independent.

---

### Background surface with props — new in V5

Background surfaces are a new component type introduced in V5. They render behind the dashboard canvas and are fully configurable via `configs.props`. Users select the background type in the dashboard settings panel, then configure its props.

**bundle.json**
```json
{
    "id": "gradient-background",
    "name": "Gradient Background",
    "description": "Smooth animated gradient rendered behind the dashboard",
    "modes": ["background-surface"],
    "tags": [],
    "vendor": "",
    "icon": "",
    "isTemplate": false
}
```

**index.tsx**
```typescript
registerComponent({
    id: 'gradient-background',   // must match the id in bundle.json
    component: GradientBackground,
    configs: {
        props: [
            {
                name: 'colorStart',
                label: 'Start Color',
                type: 'text',
                value: '#1a1a2e',
                placeholder: '#rrggbb'
            },
            {
                name: 'colorEnd',
                label: 'End Color',
                type: 'text',
                value: '#16213e',
                placeholder: '#rrggbb'
            },
            {
                name: 'direction',
                label: 'Direction',
                type: 'select',
                value: 'to-right',
                options: [
                    { label: 'Left → Right', value: 'to-right'  },
                    { label: 'Top → Bottom', value: 'to-bottom' },
                    { label: 'Diagonal',     value: 'diagonal'  }
                ]
            },
            {
                name: 'animated',
                label: 'Animate',
                type: 'toggle',
                value: false
            },
            {
                name: 'speed',
                label: 'Animation Speed (seconds)',
                type: 'number',
                value: 5,
                show: (data) => data.animated === true  // only visible when animated is on
            }
        ]
    }
});
```

`GradientBackground` receives `colorStart`, `colorEnd`, `direction`, `animated`, and `speed` as React props.

---

## What Goes Where — bundle.json vs Code

You have seen in every example above that registration is split across two files. Here is the rule:

iviva reads `bundle.json` at module upload time — **not the compiled JS**. Fields that are plain JSON must live there so the platform can index them without executing your code. Fields that contain React references or functions can only live in code.

| Field | bundle.json | Code (`registerComponent`) |
|---|---|---|
| `id` | ✅ source of truth | ✅ used for lookup |
| `name` | ✅ | — |
| `description` | ✅ | — |
| `modes` | ✅ | ✅ optional — bundle.json wins if both are set |
| `isTemplate` | ✅ | — |
| `tags` | ✅ | — |
| `vendor` | ✅ | — |
| `icon` | ✅ | — |
| `component` | — | ✅ React reference |
| `configs.layout` | — | ✅ |
| `configs.props` | — | ✅ may contain functions (`show`, `getOptions`, `validate`) |
| `configs.configPanel` | — | ✅ React component |
| `defaultProps` | — | ✅ |

`registerComponent` merges the two at runtime: code supplies the base, **bundle.json metadata wins** — the same precedence `registerWidget` and `registerUI` have always had. Since bundle.json is what the server indexes at upload time, this keeps the widget drawer and the running app from ever disagreeing. The fully-qualified id (`bundleId/componentId`) is always written last.

A component missing from `components[]` still registers and works — it just logs an error, because one forgotten entry should not stop every registration after it in `index.tsx`.

---

## Migrating Existing Projects

### Scenario A: Old "experimental" project

Projects created with `lucy-xp init --env experimental` use an older scaffold that does not include `registerComponent`. The simplest path is to scaffold a fresh V5 project and move your source code across.

**1. Create a new V5 project**

```bash
lucy-xp init --env v5 my-project-v5
cd my-project-v5
npm install
```

**2. Copy your source code**

Copy everything inside your old project's `src/` folder into the new project's `src/`. Your component code, services, types, and views are portable — only the boilerplate changes.

```
old-project/
  src/              ← copy this entire folder
  bundle.json       ← discard (regenerated boilerplate)
  uxp.ts            ← discard (regenerated boilerplate)
  webpack.config.js ← discard (regenerated boilerplate)
```

**3. Update bundle.json**

Replace old `widgets` / `uis` arrays with a `components` array:

```json
{
    "id": "iviva-my-app",
    "author": "My Company",
    "components": [
        {
            "id": "my-widget",
            "name": "My Widget",
            "description": "Short description for the widget drawer",
            "modes": ["widget"],
            "tags": ["my-app"],
            "vendor": "",
            "icon": "",
            "isTemplate": false
        },
        {
            "id": "my-ui",
            "name": "My View",
            "description": "Short description for the widget drawer",
            "modes": ["ui"],
            "tags": [],
            "vendor": "",
            "icon": "",
            "isTemplate": false
        }
    ]
}
```

**4. Update registrations in code**

Only pass code-only fields — metadata comes from bundle.json:

```typescript
// Before
import { registerWidget, registerUI } from './uxp';

registerWidget({ id: 'my-widget', widget: MyWidget });
registerUI({ id: 'my-ui', component: MyUI });

// After
import { registerComponent } from './uxp';

registerComponent({
    id: 'my-widget',   // must match the id in bundle.json
    component: MyWidget,
    configs: {
        layout: { w: 12, h: 8 },
        props: []
    }
});

registerComponent({
    id: 'my-ui',   // must match the id in bundle.json
    component: MyUI,
    configs: { props: [] }
});
```

**4. Build and update the module**

```bash
npm run build
```

Update the Lucy module to point at `dist/main.js` in the new project.

---

### Scenario B: Existing V5 project

No migration is required. Your `registerWidget` and `registerUI` calls continue to work. When you are ready to adopt `registerComponent`, the change is straightforward:

**Before:**

```typescript
registerWidget({
    id: 'energy-chart',
    widget: EnergyChartWidget,
    configs: {
        layout: { w: 12, h: 8, minW: 6, minH: 4 },
        props: [{ name: 'siteKey', label: 'Site', type: 'text' }]
    },
    defaultProps: { siteKey: '' }
});

registerUI({
    id: 'energy-overview',
    component: EnergyOverviewView
});
```

**After — bundle.json:**

```json
{
    "id": "iviva-energy-app",
    "components": [
        {
            "id": "energy-chart",
            "name": "Energy Chart",
            "description": "Real-time energy consumption for a selected site",
            "modes": ["widget"],
            "tags": ["energy", "charts"],
            "vendor": "",
            "icon": "",
            "isTemplate": false
        },
        {
            "id": "energy-overview",
            "name": "Energy Overview",
            "description": "Full-page energy overview with trends and KPIs",
            "modes": ["ui"],
            "tags": [],
            "vendor": "",
            "icon": "",
            "isTemplate": false
        }
    ]
}
```

**After — code:**

```typescript
registerComponent({
    id: 'energy-chart',   // must match bundle.json
    component: EnergyChartWidget,
    configs: {
        layout: { w: 12, h: 8, minW: 6, minH: 4 },
        props: [{ name: 'siteKey', label: 'Site', type: 'text' }]
    },
    defaultProps: { siteKey: '' }
});

registerComponent({
    id: 'energy-overview',   // must match bundle.json
    component: EnergyOverviewView,
    configs: { props: [] }
    // Add configs.props + layout + modes: ['widget'] to also make this a configurable dashboard widget
});
```

---

## `registerComponent` API Reference

### In bundle.json

These fields are serialisable and read by the server at upload time. Keep them here so the platform can index your component without executing code.

| Field | Type | Description |
|---|---|---|
| `id` | `string` | Identifier, unique within your bundle — must match the id passed to `registerComponent` |
| `name` | `string` | Human-readable name shown in the widget drawer |
| `description` | `string` | Short description shown in the widget drawer |
| `modes` | `Array<'widget' \| 'ui' \| 'background-surface'>` | How this component can be used |
| `isTemplate` | `boolean` | Whether this component is a designer template |
| `tags` | `string[]` | Tags for filtering in the widget drawer |
| `vendor` | `string` | Publisher name shown in the widget drawer |
| `icon` | `string` | Icon shown in the widget drawer (FontAwesome class) |

### In code (`registerComponent`)

These fields cannot be serialised to JSON — they contain React references or functions.

| Prop | Type | Required | Description |
|---|---|---|---|
| `id` | `string` | ✅ | Must match the `id` in bundle.json |
| `component` | `React.FC` | ✅ | The React component to render |
| `modes` | `Array<'widget' \| 'ui' \| 'background-surface'>` | | Optional — bundle.json wins if the same field is set there |
| `configs.layout` | `ILayout` | | Default grid size (`w`, `h`, `minW`, `minH`, etc.) |
| `configs.props` | `IWidgetPropConfig[]` | | Fields shown in the settings panel (may contain functions) |
| `configs.configPanel` | `React.FC` | | Custom settings panel component |
| `defaultProps` | `object` | | Default prop values when first placed |

### `modes` in detail

A component can support more than one mode — register once, usable in multiple contexts:

| Mode | Where it renders |
|---|---|
| `'widget'` | Placed on a dashboard grid; receives `uxpContext` and configured props |
| `'ui'` | Rendered as a full-page view when navigated to via a route |
| `'background-surface'` | Rendered behind the dashboard canvas |

---

## Why This Approach

**Props for every component type.** The primary motivation. Previously only widgets had a settings panel. Any component can now declare `configs.props`, so UI views and background surfaces gain the same per-instance configurability without extra plumbing.

**A UI can be a widget.** Add `'widget'` to the modes of a UI view and the same component works as a full-page navigation target and as a configurable, per-instance dashboard widget — no duplication, no separate registration.

**Single source of discovery.** The widget drawer reads one list instead of three separate registries. Every component is findable regardless of type.

**bundle.json as source of truth.** Serialisable metadata (name, description, modes, tags, vendor, icon, isTemplate) lives in `bundle.json` so the server can index it at upload time without executing code. Code supplies only what cannot be serialised: the React component reference, layout, props with functions, and defaultProps. `registerComponent` merges the two at runtime.

**Backward compatible by design.** The legacy functions remain as adapters. Existing code does not need to change.

---

## Next Steps

- [Building Pages & Dashboards](./building-pages.md) — where a registered component becomes a page
- [Core Components Reference](./core-components.md) — available UXP components to use inside your widgets and views
- [Build & Deploy](./build-deploy.md) — how to build your bundle and register it with Lucy
