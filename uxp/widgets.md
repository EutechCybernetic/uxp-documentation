# Building widgets

A widget is a card on a dashboard grid. An administrator or user places it, drags and resizes it, and
configures its props on that one instance. Build a widget when the content is analytics or reporting: a
chart, a KPI row, a ranked list, a filter card. An application screen is a
[UI view](./ui-views.md), not a widget.

## The component

A widget is an ordinary React component. Wrap it in `WidgetWrapper`, which supplies the card's border,
padding and background, and gives you width and height classes so the card can respond to its own size
rather than the viewport (`src/components/widget/other/WidgetWrapper.tsx`).

```tsx
import { WidgetWrapper, TitleBar, IContextProvider } from 'uxp/components';

interface SiteEnergyProps {
    uxpContext?: IContextProvider;
    siteKey?: string;
    days?: number;
}

const SiteEnergy: React.FunctionComponent<SiteEnergyProps> = (props) => {
    return (
        <WidgetWrapper>
            <TitleBar title="Energy use" icon="bolt" />
            <div>{props.siteKey}</div>
        </WidgetWrapper>
    );
};
```

`TitleBar` gives the card a heading, an optional icon, and a slot for controls. Most widgets have one.

## What the dashboard passes in

Your component receives a single merged props object:

| Prop | Where it comes from |
|---|---|
| Configured props | `defaultProps` merged with the values saved on this instance. Later values win (`src/components/core/dashboard/dashboardUtils.ts:456-465`) |
| `uxpContext` | The [context object](./context.md): services, user, roles, localization |
| `instanceId` | The id of this placed instance. Two copies of the same widget on one dashboard have different ids |
| `isEditing` | `true` while the dashboard is in edit mode |
| `__width__`, `__height__` | The card's current pixel size |
| `isPreview` | `true` when rendered in a preview surface rather than on a live dashboard |

The merge happens in `ComponentRenderer` (`src/components/helper/ComponentRenderer/ComponentRenderer.tsx:358-366`),
so it is the same everywhere a component is rendered.

## Configurable props

Anything a user should be able to set per instance goes in `configs.props`. Each entry becomes a field in
the settings panel shown when the instance is configured, and the saved value arrives as a plain React prop
with the same name. There is no API to call inside the component.

The full list of field types and per-field options (`options`, `getOptions`, `show`, `validate`) is in
[Unified Component Registry](../v5/unified-components.md).

## Dashboard filters

A dashboard can carry filter state shared by every widget on it. Read and set it with `useDashboardFilters`
(`src/components/core/dashboard/DashboardFiltersContext.tsx`):

```tsx
const { filters, setFilters, resetFilters } = useDashboardFilters();
```

Each dashboard owns its own filter state, so a dashboard opened inside a details panel and the one behind it
stay independent. Outside a dashboard the hook returns an inert value: reads work, writes do nothing, so a
filter widget does not need to know where it is mounted.

## How a widget reaches a dashboard

1. Build and upload your bundle, or build and deploy the app that contains it.
2. On the dashboard, switch to edit mode and open the widget drawer.
3. Find the component by name or tag and place it on the grid.
4. Resize it, then use its configure action to fill in the fields you declared in `configs.props`.

`configs.layout` decides the size it lands at (`w`, `h`), and `minW` and `minH` stop a user shrinking it
below a usable size.

## A widget on its own page

Any saved widget can also be opened on its own at `/view/widget/:name`. It renders at its designed grid size,
centered in the content area. Add `?embedded=1` and the shell renders no header and no navigation, and the
widget fills the viewport, which is what you want when embedding it in another page or an iframe
(`SystemApps/UXP/5.0/Resources/views/src/views/widgets/WidgetStandaloneView.tsx`).

Anonymous access to that page is decided per widget and enforced on the server, the same way public
dashboards are.

## A complete example

```tsx
import React from 'react';
import { WidgetWrapper, TitleBar, IContextProvider } from 'uxp/components';
import { registerComponent } from './uxp';

interface SiteEnergyProps {
    uxpContext?: IContextProvider;
    siteKey?: string;
    days?: number;
}

const SiteEnergy: React.FunctionComponent<SiteEnergyProps> = ({ uxpContext, siteKey, days }) => {
    const [total, setTotal] = React.useState<number | null>(null);

    React.useEffect(() => {
        if (!siteKey) return;
        uxpContext.executeServiceSafe('Energy', 'GetTotal', { siteKey, days })
            .then(({ data, error }) => setTotal(error ? null : data?.total));
    }, [siteKey, days]);

    return (
        <WidgetWrapper>
            <TitleBar title="Energy use" icon="bolt" />
            <div>{total ?? '--'}</div>
        </WidgetWrapper>
    );
};

registerComponent({
    id: 'site-energy',
    component: SiteEnergy,
    modes: ['widget'],
    configs: {
        layout: { w: 10, h: 8, minW: 6, minH: 6 },
        props: [
            { name: 'siteKey', label: 'Site', type: 'select', getOptions: async () => [] },
            { name: 'days', label: 'Days to include', type: 'number', value: 30 }
        ]
    },
    defaultProps: { days: 30 }
});
```

`name`, `description`, `icon` and `tags` for this component belong in `bundle.json`. See
[Bundles](./bundles.md).

## Where to go next

- [WidgetWrapper](../components/WidgetWrapper.md) and [TitleBar](../components/TitleBar.md)
- [Talking to Lucy](./lucy.md) for the service calls a widget makes
- [Building a dashboard page](../v5/dashboard-page-walkthrough.md) for a full analytics set with drill-downs
