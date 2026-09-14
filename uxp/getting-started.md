# Getting started

This page sets up a standalone bundle project: a small project of your own that builds one `main.js` you
upload to an account. It is the quickest way to see a component render, and it is the right shape when you
are shipping widgets or a single view without touching an app.

If you are building or extending an iviva application, use the app path instead. Start at
[Set up your environment](../v5/setup-environment.md).

## Create the project

```bash
npx lucy-xp init my-project --env v5
```

`--env v5` matters. Without it the CLI scaffolds the older pre-v5 template, which registers widgets with
`registerWidget` and has a v4-shaped `bundle.json`. Always pass `--env v5` for new work.

Then:

```bash
cd my-project
npm install
npm run dev
```

`npm install` pulls the dependencies. `npm run dev` starts webpack's dev server (`webpack serve`) and prints
the URL it is serving on, usually `http://localhost:8080`.

## What the dev shell gives you

The project ships two HTML pages that exist only for local development. They are never uploaded and never
served by iviva.

| Page | Renders | What you see |
|---|---|---|
| `index.html` | `renderDevDashboard(context)` | A dashboard surface. Open the widget drawer, pick your component, and it is placed on the grid where you can resize and configure it |
| `ui.html` | `renderDevUI(context)` | A single component rendered full-page, the way a routed `ui` view renders in the real shell |

Both are thin wrappers around the developer render functions in the uxp runtime
(`src/render-functions.tsx:35-55`). They build a context object in a `<script>` block at the bottom of the
file: that is where you point the project at a real account by setting `lucyUrl` and `apiKey` (both read from
`localStorage` in the scaffold), so that service calls from your component reach live data while you develop.

Neither page is part of the product shell. In iviva, the shell is served by the server and your bundle is
loaded into it; routing, navigation, the header and the theme all come from there.

## What the scaffold contains

| File | What it is |
|---|---|
| `bundle.json` | The bundle's identity and its `components[]` metadata. See [Bundles](./bundles.md) |
| `src/index.tsx` | The sample component and its `registerComponent` call |
| `src/uxp.ts` | The project's wrapper around the global register functions. It prefixes your component id with the bundle id, lowercases it, and merges the matching `bundle.json` entry over your registration |
| `uxp.d.ts` | Type definitions for `uxp/components`, downloaded by `lucy-xp init` for the version you scaffolded |
| `webpack.config.js` | Build and dev-server configuration |
| `localization.json` | Translation strings, wired up by calling `enableLocalization()` |
| `src/views/`, `src/components/`, `src/forms/`, `src/services.ts` | Sample structure for views, shared components, forms and service configs |

Always import the register functions from `./uxp`, not from the window:

```tsx
import { registerComponent } from './uxp';
```

The wrapper is what makes ids and `bundle.json` metadata line up. Calling the global directly skips it.

## The sample component

`src/index.tsx` registers one component in both `widget` and `ui` modes, so the same code renders on the
dashboard page and on the UI page:

```tsx
registerComponent({
    id: 'my-component',
    component: MyComponent,
    configs: {
        layout: { w: 12, h: 8 },
        props: []
    },
    defaultProps: {}
});
```

Its name, description, modes, tags and icon live in `bundle.json`, not here. Read
[Components and modes](./components-and-modes.md) next for what each field does, then
[Building widgets](./widgets.md) or [Building UI views](./ui-views.md) for the mode you need.

## Building and uploading

```bash
npm run build
```

This writes `dist/main.js`. [Publishing](./publishing.md) covers getting that file and `bundle.json` onto an
account, either with `lucy-xp upload` or through UXP → Settings → Manage Bundles.

## Where to go next

- [Components and modes](./components-and-modes.md): the registration API in full
- [Set up your environment](../v5/setup-environment.md): the app path, if you are working inside an iviva app
- [Your first view](../v5/first-view.md): a routed page in an app, end to end
- [Tooling](./tooling.md): lint, Storybook and keeping `uxp.d.ts` current
