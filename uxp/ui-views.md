# Building UI views

A UI view is a page: one component rendered at one route, reached from a navigation link. This is what
almost every screen in an iviva application is. Register it with `modes: ['ui']`.

```tsx
import { registerComponent } from './uxp';

registerComponent({
    id: 'work-orders',
    component: WorkOrdersView,
    modes: ['ui']
});
```

## Routed pages need an app

A `ui` component on its own is just a component. It becomes a page when an app's `Configuration.yml` points
a route at it:

```yaml
navigationLinks:
  - id: work-orders
    label: Work Orders
    link: /work-orders
    pageId: ui/work-orders
```

The `pageId` is `ui/<component id>`. The app's `baseRoute` is prefixed to `link`, so this one is served at
`/view/maintenance/work-orders`.

[Your first view](../v5/first-view.md) walks through creating the component and
[Your first navigation link](../v5/first-navigation.md) through wiring the route and the link.

## What the page receives

One merged props object, lowest precedence first: `defaultProps` from the component's `configs.props`
schema, then values configured against the route or link, then the route's `:params` and the query string,
then `uxpContext` and `isPreview`.

So `/view/maintenance/work-orders/42?tab=costs` on a route declared as `/work-orders/:id` hands your
component `{ id: '42', tab: 'costs', uxpContext, isPreview: false }`. The full table is in
[What a page receives](../v5/building-pages.md#what-a-page-receives).

You can also read the query string directly with `useSearchParams`, which is typed and re-renders only when
the values you use change.

## Navigating

`useRouterContext()` gives you the router. It is where navigation lives, not the uxp context.

```tsx
import { useRouterContext } from 'uxp/components';

const { navigate, generateURL, location, params } = useRouterContext();

navigate('/view/maintenance/work-orders');
```

| Member | What it is |
|---|---|
| `navigate` | Go to a path, or to a relative history position (`navigate(-1)`), with optional `{ replace, state }` |
| `generateURL` | Build a URL from the current one: `{ path, searchParams, removeParams, mergeParams }` |
| `location` | The current location |
| `params` | The route's matched `:params` |

## Keep open/closed state in the URL

Form and panel state belongs in the query string, not in `useState`. A URL param survives a refresh, makes
the back button work, and gives the user a link they can share.

```tsx
const { add, edit } = useSearchParams<{ add?: string; edit?: string }>();
const { navigate, generateURL } = useRouterContext();

// open the add form
navigate(generateURL({ searchParams: { add: '1' } }));

// open an edit form for one record
navigate(generateURL({ searchParams: { edit: recordKey } }));

// close either
navigate(generateURL({ removeParams: ['add', 'edit'] }));
```

Render the form when `add` or `edit` is set. The page then has no hidden state of its own.

## Reusing another app's component

`ComponentRenderer` renders any registered component by id, loading the bundle that owns it if it is not
loaded yet. Use it to embed a component another app published rather than copying it.

```tsx
import { ComponentRenderer } from 'uxp/components';

<ComponentRenderer
    moduleId="iviva-location-app"
    componentId="site-picker"
    additionalProps={{ siteKey }}
/>
```

It handles the lookup, the script load, the role check and the error state, and it merges props the same way
a dashboard does, so the component cannot tell where it was rendered.

## Replacing a view

When an account needs a different version of a page that an app already ships, the page can be overridden
rather than forked. See [Pluggable views](../v5/pluggable-views.md).

## Where to go next

- [Your first view](../v5/first-view.md) and [Your first navigation link](../v5/first-navigation.md)
- [Building pages and dashboards](../v5/building-pages.md) for the four route shapes
- [Interface guidelines](./interface-guidelines.md) for which list or table component a page should use
- [Talking to Lucy](./lucy.md) and [Data fetching](../v5/data-fetching.md) for loading data into a page
