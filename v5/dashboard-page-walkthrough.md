# Dashboard Page Walkthrough

Build an analytics page the way Page Views is built: widgets an admin composes, drill-downs two levels deep, filters scoped to each dashboard, and a layout that ships with your app.

> **The example:** every path below is real — `ivivaweb/SystemApps/System/5.0` in iviva-net-core. Read along in `Resources/views/src/components/monitor/page-views/` while you build your own.

---

## What you are building

```
/view/admin/monitoring/page-views          the page — one EmbeddedDashboard
  └── ?pvPanel=pages                       drill-down — a details panel with its own dashboard
        └── ?pvPage=/view/locations        detail — the same panel, for one object
```

Two levels, no deeper. Each level is a dashboard an admin composes; the page owns the URL, the data and what "open" means.

---

## 1. Widgets first

Each tile is a component registered with `modes: ['widget']`. Give it a `layout` (its default grid size) and `props` (the fields an admin sees in its settings panel).

```typescript
// src/index.tsx
registerComponent({
    id: 'page-views-top-pages',
    component: TopPagesWidget,
    modes: ['widget'],
    configs: {
        layout: { w: 10, h: 8, minW: 6, minH: 6 },
        props: [
            { name: 'title', label: 'Title', type: 'text' },
            { name: 'showBorder', label: 'Show border', type: 'toggle', value: true },
        ],
    },
});
```

with the matching entry in `bundle.json`:

```json
{
    "id": "page-views-top-pages",
    "name": "Page Views · Top pages",
    "description": "Most viewed pages in the range",
    "modes": ["widget"],
    "icon": "fas file-lines",
    "tags": ["page views", "analytics"],
    "appRoles": ["System:canmanage"]
}
```

Two habits worth copying from the example:

- **Every widget shares one card component** (`common/PageViewsWidgetCard.tsx`), so title, border, padding and the footer link behave identically everywhere and are configurable in one place.
- **Every widget accepts the same context props** — a range, and optionally a page or user (`common/pageViewsRange.ts`). That single contract is what lets the same widget sit on the main page and inside a drill-down without knowing which it is.

---

## 2. The page

A coded page that renders one `EmbeddedDashboard`:

```typescript
// src/views/admin/monitoring/PageViewsView.tsx
const DASHBOARD_IDS = ['page-views-analytics'];

export const PageViewsView = () => (
    <EmbeddedDashboard ids={DASHBOARD_IDS} allowToConfigure={true} />
);
```

Register it with `modes: ['ui']` and route it from `Configuration.yml`:

```yaml
  - label: Page Views
    icon: fas chart-line
    link: /monitoring/page-views
    pageId: ui/page-views-view
    appRoles: ["System:canmanage"]
```

Open the page and add `?configuredashboard=1` to compose it — drag widgets in from the drawer, resize, and configure each one's settings. What you arrange is saved against the dashboard id.

---

## 3. Drill-downs, in the URL

A drill-down is just another dashboard shown in a panel over the page. Keep "what is open" in the URL — it survives a reload, it can be linked, and back works:

| Param | Opens |
|---|---|
| `?pvPanel=pages` | The "all pages" drill-down dashboard |
| `?pvPage=<page>` | The detail dashboard for one page |
| `?pvUser=<key>` | The detail dashboard for one user |

Read them with `useSearchParams`, and render a panel whose body is an `EmbeddedDashboard` for the matching id:

```typescript
// common/DashboardDrillDownPanel.tsx — the reusable shell
<SlideInPanel isOpen={isOpen} onClose={onClose} mode="full">
    <ObjectDetailsPanel
        title={{ title, subtitle, analytics }}
        tabs={[{ id: 'dashboard', details: (
            <EmbeddedDashboard
                ids={dashboardIds}
                autoPassedProps={autoPassedProps}
                defaultConfiguration={defaultConfiguration}
            />
        ) }]}
        onClose={onClose}
    />
</SlideInPanel>
```

Two rules that keep this stable:

- **Only one dashboard may be in edit mode at a time.** `?configuredashboard=1` is page-wide, so hand edit rights to the panel while it is open: `allowToConfigure={!isOpen}` on the page's dashboard.
- **Build the panel's identity from the URL, not from its own filters.** If the key you give the panel includes values the panel itself can change, setting a filter remounts the panel that holds it.

`autoPassedProps` carries the object being drilled into — the page key, the user key — down to every widget in the panel, so the same Top Pages widget scopes itself without any extra code.

---

## 4. Filters scoped to one dashboard

A filter widget needs to drive its neighbours — but only its neighbours. With a page dashboard and a drill-down open over it, a shared filter would have both dashboards fighting.

`useDashboardFilters()` reads and writes the filter state of whichever dashboard the widget is rendered in:

```typescript
// widgets/FilterWidget.tsx
import { useDashboardFilters } from 'uxp/components';

const { filters, setFilters } = useDashboardFilters();

<DateRangePicker
    startDate={filters.startDate}
    endDate={filters.endDate}
    onChange={(startDate, endDate, preset) =>
        setFilters(f => ({ ...f, startDate, endDate, preset }))}
/>
```

Every other widget on that dashboard receives the values as props — no wiring, no event bus. A drill-down's filter leaves the page behind it untouched, and vice versa.

The host can watch without owning:

```typescript
<EmbeddedDashboard ids={DASHBOARD_IDS} onFiltersChange={setFilters} />
```

Page Views uses that to keep the drill-down panel's header KPIs in step with the filters set inside it.

> **Embedded dashboards only.** `EmbeddedDashboard` is the only provider today, so in a standard `/dashboard/<id>` dashboard the hook returns an inert value — reading gives `{}`, writing does nothing, no error. Support there is planned.

---

## 5. Ship the composed layout

Once the dashboards look right, export and ship them so a fresh account gets the page already composed.

In edit mode, use the dashboard's **export** action — it downloads `<dashboard-id>.WidgetConfigurations.json`, which is exactly the shape `defaultConfiguration` expects. Drop the files into your app and map them by dashboard id:

```typescript
// components/monitor/page-views/dashboards/index.ts
import analytics from './page-views-analytics.json';
import drillPages from './page-views-drill-pages.json';

export const PAGE_VIEWS_DASHBOARDS: Record<string, ResponsiveWidgetLayoutConfiguration> = {
    'page-views-analytics': analytics as unknown as ResponsiveWidgetLayoutConfiguration,
    'page-views-drill-pages': drillPages as unknown as ResponsiveWidgetLayoutConfiguration,
};
```

then pass the right one at each level:

```typescript
<EmbeddedDashboard
    ids={DASHBOARD_IDS}
    defaultConfiguration={PAGE_VIEWS_DASHBOARDS['page-views-analytics']}
/>
```

Things to know:

- **A saved dashboard always wins.** The default is only read when no record exists for the id — this can never overwrite an account's customisation, including your own while developing.
- **Keep the imports at module scope.** `defaultConfiguration` feeds the dashboard's config lookup; a fresh object literal on every render re-triggers it.
- **A `defaultConfiguration` also gives you "Restore to defaults"** in edit mode, which deletes the saved record and falls back to your shipped layout.
- To see your default on an account that has already saved one, use that button — or clear the stored record.

---

## Checklist

- [ ] Widgets registered with `modes: ['widget']` and present in `bundle.json` `components[]`
- [ ] One shared card component, so chrome is consistent and configurable
- [ ] One props contract every widget accepts, so widgets work at any level
- [ ] Page registered with `modes: ['ui']` and routed from `Configuration.yml`
- [ ] Drill-down state in the URL; panel identity built from the URL only
- [ ] `allowToConfigure={!isOpen}` so only one dashboard edits at a time
- [ ] Filter widget on each dashboard that needs one, using `useDashboardFilters`
- [ ] Exported layouts shipped as `defaultConfiguration`, imported at module scope

---

## Next Steps

- [EmbeddedDashboard](./embedded-dashboard.md) — every prop, edit mode, background surfaces
- [Building Pages & Dashboards](./building-pages.md) — when to use a dashboard at all
- [Data Fetching](./data-fetching.md) — the service calls behind the widgets
