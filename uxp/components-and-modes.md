# Components and modes

Everything you contribute to the frontend is a component, and every component is registered the same way,
with `registerComponent`. What a component can be used for is decided by its `modes`.

```tsx
import { registerComponent } from './uxp';

registerComponent({
    id: 'site-summary',
    component: SiteSummary,
    modes: ['ui'],
    configs: {
        props: [
            { name: 'siteKey', label: 'Site', type: 'text' }
        ]
    }
});
```

## The registration

`registerComponent` is the single registry (`src/registrations.ts:12`). Its full shape is the
`ComponentDefinition` type (`src/types.ts:1107-1148`); these are the fields you author.

| Field | What it does |
|---|---|
| `id` | The component's identity, unique within your bundle. Write it bare. The project's `uxp.ts` wrapper prefixes it with the bundle id and lowercases the result (`src/uxp.ts:577`), so `site-summary` in a bundle called `iviva-location-app` registers as `iviva-location-app/site-summary` |
| `component` | The React component to render |
| `modes` | Which surfaces this component can be used on. See below |
| `configs.layout` | Default grid size when the component is first dropped on a dashboard: `w`, `h`, `minW`, `minH` |
| `configs.props` | The fields shown in the settings panel when someone configures an instance. Saved values arrive as plain React props. The field reference is in [Unified Component Registry](../v5/unified-components.md) |
| `configs.configPanel` | A custom settings panel component, instead of the generated form |
| `defaultProps` | Prop values used before the instance is configured |
| `name`, `description`, `icon`, `tags` | Metadata shown in the widget drawer and in search |

`name`, `description`, `icon`, `tags` and `modes` are serializable, so their authoring home is
`bundle.json`, not the code. The wrapper merges the `bundle.json` entry over the registration and the
bundle entry wins. Declare them there and leave them out of the call. See [Bundles](./bundles.md).

## Modes

`modes` is a list, so one component can serve more than one surface.

| Mode | Where it renders |
|---|---|
| `'widget'` | A card on a dashboard grid. The user places it, resizes it and configures its props per instance |
| `'ui'` | A full page, rendered at a route the app declares. This is what an application screen is |
| `'background'` | Behind a dashboard canvas, as the dashboard's backdrop |
| `'lucy-block'` | A block in the Lucy model designer, registered through `registerLucyBlock` |

One naming note: the runtime name for the third mode is `'background'` (`src/types.ts:1105`). The CLI
template and some older pages spell it `'background-surface'`. Use `'background'`.

> **`modes` defaults to `['widget']`.** If you omit it, `registerComponent` fills in `['widget']`
> (`src/registrations.ts:14`), and the server does the same when it reads `bundle.json`. A page component
> with no `modes` silently becomes a dashboard widget and never renders at its route. Always set `modes`
> explicitly.

## Views or widgets

Register an application screen as a `ui` component inside its app: Location, User, Asset and the rest of
core do this for every screen they ship, and none of them ships a widget. Build a `widget` when the content
is analytics or reporting that belongs on a dashboard, where a user places the card and configures it,
as System's page-view analytics set does. A form, a list page or a details page is a `ui` view, not a widget.

## Other register functions

These exist alongside `registerComponent` and all end up in the same registry.

| Function | Status |
|---|---|
| `registerWidget(...)` | Legacy. An adapter that calls `registerComponent` with `modes: ['widget']`. Still works; new code should not use it |
| `registerUI(...)` | Legacy. An adapter that calls `registerComponent` with `modes: ['ui']`. Still works; new code should not use it |
| `registerBackgroundSurface(...)` | Registers a dashboard backdrop, as `modes: ['background']` |
| `registerLucyBlock(...)` | Registers a Lucy model-designer block, as `modes: ['lucy-block']`. Takes a block definition with a `type` |
| `registerTabInjection(...)` | Contributes a tab to another object type's details page. See [Injected tabs](../v5/injected-tabs.md) |

`registerComponent`, `registerWidget`, `registerUI` and `registerTabInjection` are exported by your
project's `uxp.ts` wrapper, so import them from there. `registerBackgroundSurface` and `registerLucyBlock`
are runtime globals: a project that needs one declares it in `uxp.ts` alongside the rest.

The two legacy adapters also produce a different id shape: `bundleId/widget/<id>` and `bundleId/ui/<id>`,
against `registerComponent`'s `bundleId/<id>`. That is one more reason to move a project over in one go
rather than mixing the two.

`registerLink` and `registerMenuItem` do nothing. They are kept only so old bundles still load, and each
logs a warning when called (`src/registrations.ts:141-150`). Navigation in v5 comes from two places: an
app's `Configuration.yml`, and the master links an administrator maintains in the navigation configuration.
Code cannot add a link.

## Where to go next

- [Building widgets](./widgets.md): the dashboard side, with a complete example
- [Building UI views](./ui-views.md): routed pages, parameters and navigation
- [Unified Component Registry](../v5/unified-components.md): the `configs.props` field types in full
- [Bundles](./bundles.md): what belongs in `bundle.json` and what the server does with it
