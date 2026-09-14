# Bundles

A bundle is one compiled JavaScript file plus a `bundle.json` that describes what is inside it. Webpack
produces the JavaScript; you write the `bundle.json`.

```bash
npm run build
```

That writes `dist/main.js`, containing all of your code and stylesheets.

## bundle.json

```json
{
    "id": "8d9be51e-07c3-45da-8c34-28670ff41077",
    "author": "eutech",
    "components": [
        {
            "id": "site-energy",
            "name": "Energy use",
            "description": "Total energy use for a site over a rolling window",
            "modes": ["widget"],
            "tags": ["energy", "analytics"],
            "icon": "bolt",
            "isTemplate": false,
            "appRoles": [],
            "userGroups": []
        }
    ]
}
```

| Field | What it is |
|---|---|
| `id` | The bundle's unique identity. Generated for you by `lucy-xp init`. An app's bundle id is the app's bundle name, for example `iviva-system-app` |
| `author` | Your organization's identifier |
| `components` | One entry per registered component |

And on each component entry:

| Field | What it is |
|---|---|
| `id` | The component id, matching the `id` passed to `registerComponent` |
| `name` | The name shown in the widget drawer and in search |
| `description` | A sentence about what it does, shown beside the name |
| `modes` | `widget`, `ui`, `background` or `lucy-block`. See [Components and modes](./components-and-modes.md) |
| `tags` | Tags used to find it in the widget drawer |
| `icon` | The icon shown beside it |
| `isTemplate` | Whether this component is a designer template |
| `appRoles` | Qualified `"App:role"` strings. A user needs any one of them. Empty or absent means everyone |
| `userGroups` | User group **keys**, not names. Checked alongside `appRoles` |

The server reads the same shape (`SDUtil/AccountManager.cs:873-905`), which is why these fields must be
JSON and not code.

## bundle.json wins

Your project's `uxp.ts` wrapper looks up the `bundle.json` entry whose `id` matches the one you passed to
`registerComponent`, and merges it over your registration (`src/uxp.ts:558-588`). The bundle entry wins on
every field they share.

That split is deliberate. Anything serializable lives in `bundle.json`, where the server can index it at
upload time without executing your code, so the widget drawer and the running app can never disagree. Code
supplies only what JSON cannot hold: the React component reference, `configs.layout`, `configs.props` (whose
`getOptions`, `show` and `validate` are functions) and `defaultProps`.

If a registered component has no matching `bundle.json` entry, the wrapper logs an error and carries on
registering, so one missing entry does not take down every registration after it. The component will still
render locally and be missing its metadata once uploaded.

> **The `modes` trap.** A `components[]` entry with no `modes` becomes a dashboard widget. `registerComponent`
> defaults it to `['widget']`, and so does the server when it reads `bundle.json`
> (`SDUtil/AccountManager.cs`, `GetComponentsFromApps`). A page component that never appears at its route is almost always this.
> Set `modes` on every entry.

## Permissions

`appRoles` and `userGroups` belong in `bundle.json` and nowhere else. Do not pass them to your register call;
the wrapper carries them across for you, so changing who can see a component is a `bundle.json` change with
no code change.

```json
{
    "id": "site-energy",
    "name": "Energy use",
    "modes": ["widget"],
    "appRoles": ["Organization:canopenapp"],
    "userGroups": []
}
```

A user who matches neither does not see the component in the widget drawer, and an instance already placed
renders a "not authorized" message instead. `showUnauthorizedError: false` hides it silently instead.

The server applies the same roles: a page component's roles keep its link out of the user's navigation and
its URL out of the user's routes, and the shell re-checks them when the component renders. It is still UI
gating, not a security boundary. Any data your component fetches must be protected by role checks in the
services and model actions it calls.

Because `bundle.json` is compiled into your JavaScript, changing permissions means rebuilding and
republishing the bundle.

## Legacy arrays

Older bundles used `widgets[]` and `uis[]` instead of `components[]`. Both are still read: a `widgets[]`
entry becomes a component with `modes: ['widget']` and a `uis[]` entry one with `modes: ['ui']`. You do not
need to migrate a bundle that works, but write new entries in `components[]`.

`sidebarLinks[]` and `menuItems[]` are parsed and then ignored. Navigation comes from an app's
`Configuration.yml` and from the master links an administrator maintains; a bundle cannot contribute a link.

## Where to go next

- [Publishing](./publishing.md): getting the bundle onto an account
- [Components and modes](./components-and-modes.md): what each mode does
- [Unified Component Registry](../v5/unified-components.md): the code side of the split, field by field
